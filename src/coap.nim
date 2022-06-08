import posix, nativesockets, strutils, parseutils, asyncdispatch, tables

type
  closesocket = object

const Null = nil

let
  Coaperrfd = stderr
  Coapdebugfd = stdout

when defined(useFuthark):
  # This part uses Futhark, make sure that it is installed, and that clang is installed if you want to rebuild it from coap sources
  import futhark

  proc renameCallback(name: string, kind: string, partof: string): string =
    if name == "coap_send": return name
    return name.replace("coap_", "")

  importc:
    sysPath "/usr/lib/clang/13.0.1/include"
    path "/usr/include/coap3"
    renameCallback renameCallback
    "coap.h"
else:
  # This wrapper was built from 4.3.0 sources
  include "futhark_8478869B548CB361.nim"

import options

type
  Context* = object
    inner: ptr context_t
  Reply* = object
    code*: enumPduCodeT
    data*: seq[byte]
  SessionObj* = object
    inner: ptr session_t
    messages: Table[uint64, Future[Reply]]
  Session* = ref SessionObj
  Address* = object
    inner: address_t
  Pdu* = object
    sent: bool # If PDUs are sent libcoap will free it for us, otherwise we need to delete it ourselves
    inner: ptr pdu_t
  CoapError* = object of CatchableError
  Protocol* = enum
    None = COAP_PROTO_NONE, Udp = COAP_PROTO_UDP, Dtls = COAP_PROTO_DTLS, Tcp = COAP_PROTO_TCP, Tls = COAP_PROTO_TLS
  MessageKind* = enum
    Confirmable = COAP_MESSAGE_CON, NonConfirmable = COAP_MESSAGE_NON, Acknowledge = COAP_MESSAGE_ACK, Reset = COAP_MESSAGE_RST
  MessageCode* = enum
    Get = COAP_REQUEST_GET, Post = COAP_REQUEST_POST, Put = COAP_REQUEST_PUT, Delete = COAP_REQUEST_DELETE, Patch = COAP_REQUEST_PATCH

proc `=destroy`(ctx: var Context) =
  freeContext(ctx.inner)

proc `=destroy`(ses: var SessionObj) =
  sessionRelease(ses.inner)
  `=destroy`(ses.messages)

proc `=destroy`(pdu: var Pdu) =
  if not pdu.sent:
    deletePdu(pdu.inner)

proc newAddress*(host, port: string): Address =
  ## Looks up network address info. Prefers IPv6 address, although the format
  ## of the host address should suggest the IP version.
  var hints: AddrInfo
  hints.ai_family = posix.AF_UNSPEC
  hints.ai_socktype = posix.SOCK_DGRAM
  # Use 'info' to iterate over linked list, and retain first element in 'firstInfo'.
  var info, firstInfo: ptr AddrInfo

  address_init(result.inner.addr)
  if getaddrinfo(host, port, addr hints, firstInfo).bool:
    raise newException(CoapError,
                       "Cannot resolve address for host $#, port $#" % [host, port])
  info = firstInfo

  while info != nil:
    if info.ai_family == posix.AF_INET6:
      result.inner.size = sizeof(SockAddr_in6).SockLen
      copyMem(addr result.inner.addrField.sin6, info.ai_addr, result.inner.size)
      break
    elif info.ai_family == posix.AF_INET:
      result.inner.size = sizeof(SockAddr_in).SockLen
      copyMem(addr result.inner.addrField.sin, info.ai_addr, result.inner.size)
    info = info.ai_next

  freeaddrinfo(firstInfo)

proc responseHandler(session: ptr sessiont, sent: ptr pdut, received: ptr pdut, id: midt): responset {.cdecl.} =
  #if sent != nil: echo "Sent: ", sent.repr, " ", sent.pduGetType, " ", sent.pduGetMid, " ", sent.pduGetCode
  if received != nil and received.pduGetMid == id:
    var fut: Future[Reply]
    if received.pduGetType == COAP_MESSAGE_ACK:
      var
        data: ptr uint8
        size: csize_t
      discard received.getData(size.addr, data.addr)
      var reply = Reply(code: received.pduGetCode, data: newSeq[byte](size.int))
      if size > 0:
        reply.data[0].addr.copyMem(data, size.int)
      let rawToken = received.pduGetToken()
      var token: uint64
      token.addr.copyMem(rawToken.s, rawToken.length)
      if cast[ptr Table[uint64, Future[Reply]]](session.sessionGetAppData())[].pop(token, fut):
        fut.complete(reply)
    else:
      let rawToken = received.pduGetToken()
      var token: uint64
      token.addr.copyMem(rawToken.s, rawToken.length)
      if cast[ptr Table[uint64, Future[Reply]]](session.sessionGetAppData())[].pop(token, fut):
        fut.fail(newException(CoapError, "CoAP message not ACK"))
  return COAP_RESPONSE_OK

proc nackHandler(session: ptr sessiont, sent: ptr pdut, reason: nackReasonT, id: midt) {.cdecl.} =
  echo "Got nack for ", id, " for reason ", reason

proc eventHandler(session: ptr sessiont, event: eventt): cint {.cdecl.} =
  echo "Event: ", event

proc newContext*(): Context =
  result.inner = newContext(nil)
  if result.inner == nil:
    raise newException(CoapError, "Unable to initialise CoAP context")
  result.inner.registerResponseHandler(responseHandler)
  #setLogLevel(Logdebug)
  #result.inner.registerNackHandler(nackHandler)
  #result.inner.registerEventHandler(eventHandler)
  #result.inner.contextGetFd().AsyncFD.register

proc newContext*(listenAddress: Address): Context =
  result.inner = newContext(listenAddress.inner.unsafeaddr)
  if result.inner == nil:
    raise newException(CoapError, "Unable to initialise CoAP context")
  result.inner.registerResponseHandler(responseHandler)
  #result.inner.registerNackHandler(nackHandler)
  #result.inner.registerEventHandler(eventHandler)
  #result.inner.contextGetFd().AsyncFD.register

proc newClientSession*(ctx: Context, server: Address, proto: Protocol, localIf: Option[Address] = none(Address)): Session =
  ## ctx: The CoAP context.
  ## local_if: Address of local interface. It is recommended to use NULL to let the operating system choose a suitable local interface. If an address is specified, the port number should be zero, which means that a free port is automatically selected.
  ## server: The server's address. If the port number is zero, the default port for the protocol will be used.
  ## proto: Protocol.
  let localIfAddr = if localIf.isNone: nil else: localIf.get.inner.unsafeaddr
  new result
  result.inner = newClientSession(ctx.inner, localIfAddr, server.inner.unsafeaddr, proto.proto_t)
  if result.inner == nil:
    raise newException(CoapError, "Unable to initialise CoAP session")
  result.inner.sessionSetAppData(cast[pointer](result.messages.addr))

proc newClientSession*(ctx: Context, server: Address, proto: Protocol, identity: string, key: seq[byte] or seq[uint8] or seq[char] or string, localIf: Option[Address] = none(Address)): Session =
  ## Set up a PSK client session, all arguments are the same as for ``newClientSession`` except identity and key which should be obvious.
  let localIfAddr = if localIf.isNone: nil else: localIf.get.inner.unsafeaddr
  new result
  result.inner = newClientSessionPsk(ctx.inner, localIfAddr, server.inner.unsafeAddr, proto.proto_t, identity.cstring, cast[ptr uint8](key[0].unsafeaddr), key.len.cuint)
  if result.inner == nil:
    raise newException(CoapError, "Unable to initialise CoAP PSK session")
  result.inner.sessionSetAppData(cast[pointer](result.messages.addr))

proc doPctDecode*(src: string): string =
  ## Returns a string derived from the input with any percent encodings, like
  ## "%D6" replaced with the decoded character. Simply returns the input string
  ## if an encoding is not found.
  ## Raises a ValueError if an encoding is not valid.
  if src.find('%') == -1:
    return src
  var pos = 0
  while pos < len(src):
    if src[pos] == '%':
      if len(src) < (pos + 1):
        raise newException(ValueError, "Invalid percent encoding in " & src)
      result.add(cast[char](fromHex[int8](src.substr(pos+1, pos+2))))
      pos += 3
    else:
      result.add(src[pos])
      pos += 1

proc setPath*(pdu: Pdu, path: string) =
  ## Sets the path of the PDU, this is done automatically by put and get message procedures
  var pos = 0
  var chain: ptr optlistT

  # Uri-Path from path string
  while pos < path.len:
    var segment: string
    let plen = parseUntil(path, segment, '/', pos)
    segment = doPctDecode(segment)
    #echo("start pos: ", pos, ", segment: ", segment, " of len ", plen)
    if plen > 0:
      let optlist = newOptlist(COAP_OPTION_URI_PATH.uint16,
                               len(segment).csize_t,
                               cast[ptr uint8](segment.cstring))
      if optlist == nil:
        raise newException(CoapError, "Can't create option list")
      if not insertOptlist(addr chain, optlist).bool:
        raise newException(CoapError, "Can't add to option chain")
    pos = pos + plen + 1

  if chain == nil and path != "/":
    raise newException(CoapError, "Can't create option list (2)")
  if chain != nil and not addOptlistPdu(pdu.inner, addr chain).bool:
    deleteOptlist(chain)
    raise newException(CoapError, "Can't create option list (3)")
  deleteOptlist(chain)

proc pduInit(session: Session, kind: MessageKind, code: MessageCode, size = 0.uint): Pdu =
  result.inner = pdu_init(kind.pduTypeT, code.pduCodeT, newMessageId(session.inner).midT, if size == 0: sessionMaxPduSize(session.inner) else: size)
  if result.inner.isNil:
    raise newException(CoapError, "Cannot create PDU")
  var
    token: uint64
    tokenlen: csizet
  sessionNewToken(session.inner, tokenlen.addr, cast[ptr uint8](token.addr))
  if result.inner.addToken(tokenlen, cast[ptr uint8](token.addr)) == 0:
    raise newException(CoapError, "Cannot add token to request")

template sendPdu(session, pdu, future: untyped): untyped =
  let rawToken = pdu.inner.pduGetToken()
  var token: uint64
  token.addr.copyMem(rawToken.s, rawToken.length)
  if coapSend(session.inner, pdu.inner) != COAP_INVALID_MID:
    session.messages[token] = future
    pdu.sent = true
  else:
    raise newException(CoapError, "Cannot send message")
  let
    sessionPtr = session.inner
    fileHandle = session.inner.sessionGetContext.contextGetFd().AsyncFD
  let p = getGlobalDispatcher()
  if fileHandle notin p:
    fileHandle.register
    addRead(fileHandle, proc (fd: AsyncFD): bool {.gcsafe.} =
      let waiting = cast[ptr Table[uint64, Future[string]]](sessionPtr.sessionGetAppData())
      if ioProcess(sessionPtr.sessionGetContext, cast[uint32](-1)) == -1:
        raise newException(CoapError, "Error processing IO")
      if waiting[].len == 0:
        unregister(fileHandle)
        true
      else:
        false
    )

proc putMessage*(session: Session, path, data: seq[uint8] or seq[char] or seq[byte] or string): Future[Reply] =
  ## Sends a put message with the given data
  result = newFuture[Reply]("sendMessage")
  var pdu = pduInit(session, Confirmable, Put)

  pdu.setPath path
  if not pdu.inner.addData(data.len.csize_t, cast[ptr uint8](data[0].unsafeaddr)).bool:
    raise newException(CoapError, "Cannot add data to PDU")

  sendPdu(session, pdu, result)

proc getMessage*(session: Session, path: string): Future[Reply] =
  ## Sends a get message
  result = newFuture[Reply]("getMessage")
  var pdu = pduInit(session, Confirmable, Get)

  pdu.setPath path

  sendPdu(session, pdu, result)

