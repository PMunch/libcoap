
from macros import hint

when not declared(enumcachesessionbasedt):
  type
    enumcachesessionbasedt* {.size: sizeof(cuint).} = enum
      Coapcachenotsessionbased = 0, Coapcacheissessionbased = 1
else:
  static :
    hint("Declaration of " & "enum_coap_cache_session_based_t" &
        " already exists, not redeclaring")
when not declared(enumdtlsrolet):
  type
    enumdtlsrolet* {.size: sizeof(cuint).} = enum
      Coapdtlsroleclient = 0, Coapdtlsroleserver = 1
else:
  static :
    hint("Declaration of " & "enum_coap_dtls_role_t" &
        " already exists, not redeclaring")
when not declared(enumsessionstatet):
  type
    enumsessionstatet* {.size: sizeof(cuint).} = enum
      Coapsessionstatenone = 0, Coapsessionstateconnecting = 1,
      Coapsessionstatehandshake = 2, Coapsessionstatecsm = 3,
      Coapsessionstateestablished = 4
else:
  static :
    hint("Declaration of " & "enum_coap_session_state_t" &
        " already exists, not redeclaring")
when not declared(enumtlslibraryt):
  type
    enumtlslibraryt* {.size: sizeof(cuint).} = enum
      Coaptlslibrarynotls = 0, Coaptlslibrarytinydtls = 1,
      Coaptlslibraryopenssl = 2, Coaptlslibrarygnutls = 3,
      Coaptlslibrarymbedtls = 4
else:
  static :
    hint("Declaration of " & "enum_coap_tls_library_t" &
        " already exists, not redeclaring")
when not declared(enumpkikeyt):
  type
    enumpkikeyt* {.size: sizeof(cuint).} = enum
      Coappkikeypem = 0, Coappkikeyasn1 = 1, Coappkikeypembuf = 2,
      Coappkikeypkcs11 = 3
else:
  static :
    hint("Declaration of " & "enum_coap_pki_key_t" &
        " already exists, not redeclaring")
when not declared(enumcacherecordpdut):
  type
    enumcacherecordpdut* {.size: sizeof(cuint).} = enum
      Coapcachenotrecordpdu = 0, Coapcacherecordpdu = 1
else:
  static :
    hint("Declaration of " & "enum_coap_cache_record_pdu_t" &
        " already exists, not redeclaring")
when not declared(enumpducodet):
  type
    enumpducodet* {.size: sizeof(cuint).} = enum
      Coapemptycode = 0, Coaprequestcodeget = 1, Coaprequestcodepost = 2,
      Coaprequestcodeput = 3, Coaprequestcodedelete = 4,
      Coaprequestcodefetch = 5, Coaprequestcodepatch = 6,
      Coaprequestcodeipatch = 7, Coapresponsecodeok = 64,
      Coapresponsecodecreated = 65, Coapresponsecodedeleted = 66,
      Coapresponsecodevalid = 67, Coapresponsecodechanged = 68,
      Coapresponsecodecontent = 69, Coapresponsecodecontinue = 95,
      Coapresponsecodebadrequest = 128, Coapresponsecodeunauthorized = 129,
      Coapresponsecodebadoption = 130, Coapresponsecodeforbidden = 131,
      Coapresponsecodenotfound = 132, Coapresponsecodenotallowed = 133,
      Coapresponsecodenotacceptable = 134, Coapresponsecodeincomplete = 136,
      Coapresponsecodeconflict = 137, Coapresponsecodepreconditionfailed = 140,
      Coapresponsecoderequesttoolarge = 141,
      Coapresponsecodeunsupportedcontentformat = 143,
      Coapresponsecodeunprocessable = 150,
      Coapresponsecodetoomanyrequests = 157,
      Coapresponsecodeinternalerror = 160, Coapresponsecodenotimplemented = 161,
      Coapresponsecodebadgateway = 162,
      Coapresponsecodeserviceunavailable = 163,
      Coapresponsecodegatewaytimeout = 164,
      Coapresponsecodeproxyingnotsupported = 165,
      Coapresponsecodehoplimitreached = 168, Coapsignalingcodecsm = 225,
      Coapsignalingcodeping = 226, Coapsignalingcodepong = 227,
      Coapsignalingcoderelease = 228, Coapsignalingcodeabort = 229
else:
  static :
    hint("Declaration of " & "enum_coap_pdu_code_t" &
        " already exists, not redeclaring")
when not declared(enumpdusignalingprotot):
  type
    enumpdusignalingprotot* {.size: sizeof(cuint).} = enum
      Coapsignalingcsm = 225, Coapsignalingping = 226, Coapsignalingpong = 227,
      Coapsignalingrelease = 228, Coapsignalingabort = 229
else:
  static :
    hint("Declaration of " & "enum_coap_pdu_signaling_proto_t" &
        " already exists, not redeclaring")
when not declared(enumurischemet):
  type
    enumurischemet* {.size: sizeof(cuint).} = enum
      Coapurischemecoap = 0, Coapurischemecoaps = 1, Coapurischemecoaptcp = 2,
      Coapurischemecoapstcp = 3, Coapurischemehttp = 4, Coapurischemehttps = 5
else:
  static :
    hint("Declaration of " & "enum_coap_uri_scheme_t" &
        " already exists, not redeclaring")
when not declared(enumrequestt):
  type
    enumrequestt* {.size: sizeof(cuint).} = enum
      Coaprequestget = 1, Coaprequestpost = 2, Coaprequestput = 3,
      Coaprequestdelete = 4, Coaprequestfetch = 5, Coaprequestpatch = 6,
      Coaprequestipatch = 7
else:
  static :
    hint("Declaration of " & "enum_coap_request_t" &
        " already exists, not redeclaring")
when not declared(enumasn1privatekeytypet):
  type
    enumasn1privatekeytypet* {.size: sizeof(cuint).} = enum
      Coapasn1pkeynone = 0, Coapasn1pkeyrsa = 1, Coapasn1pkeyrsa2 = 2,
      Coapasn1pkeydsa = 3, Coapasn1pkeydsa1 = 4, Coapasn1pkeydsa2 = 5,
      Coapasn1pkeydsa3 = 6, Coapasn1pkeydsa4 = 7, Coapasn1pkeydh = 8,
      Coapasn1pkeydhx = 9, Coapasn1pkeyec = 10, Coapasn1pkeyhmac = 11,
      Coapasn1pkeycmac = 12, Coapasn1pkeytls1prf = 13, Coapasn1pkeyhkdf = 14
else:
  static :
    hint("Declaration of " & "enum_coap_asn1_privatekey_type_t" &
        " already exists, not redeclaring")
when not declared(memorytagt):
  type
    memorytagt* {.size: sizeof(cuint).} = enum
      Coapstring = 0, Coapattributename = 1, Coapattributevalue = 2,
      Coappacket = 3, Coapnode = 4, Coapcontext = 5, Coapendpoint = 6,
      Coappdu = 7, Coappdubuf = 8, Coapresource = 9, Coapresourceattr = 10,
      Coapsession = 11, Coapoptlist = 12, Coapcachekey = 13,
      Coapcacheentry = 14, Coaplgxmit = 15, Coaplgcrcv = 16, Coaplgsrcv = 17
else:
  static :
    hint("Declaration of " & "coap_memory_tag_t" &
        " already exists, not redeclaring")
when not declared(enumpdutypet):
  type
    enumpdutypet* {.size: sizeof(cuint).} = enum
      Coapmessagecon = 0, Coapmessagenon = 1, Coapmessageack = 2,
      Coapmessagerst = 3
else:
  static :
    hint("Declaration of " & "enum_coap_pdu_type_t" &
        " already exists, not redeclaring")
when not declared(enumsessiontypet):
  type
    enumsessiontypet* {.size: sizeof(cuint).} = enum
      Coapsessiontypenone = 0, Coapsessiontypeclient = 1,
      Coapsessiontypeserver = 2, Coapsessiontypehello = 3
else:
  static :
    hint("Declaration of " & "enum_coap_session_type_t" &
        " already exists, not redeclaring")
when not declared(enumresponset):
  type
    enumresponset* {.size: sizeof(cuint).} = enum
      Coapresponsefail = 0, Coapresponseok = 1
else:
  static :
    hint("Declaration of " & "enum_coap_response_t" &
        " already exists, not redeclaring")
when not declared(nackreasont):
  type
    nackreasont* {.size: sizeof(cuint).} = enum
      Coapnacktoomanyretries = 0, Coapnacknotdeliverable = 1, Coapnackrst = 2,
      Coapnacktlsfailed = 3, Coapnackicmpissue = 4
else:
  static :
    hint("Declaration of " & "coap_nack_reason_t" &
        " already exists, not redeclaring")
when not declared(enumprotot):
  type
    enumprotot* {.size: sizeof(cuint).} = enum
      Coapprotonone = 0, Coapprotoudp = 1, Coapprotodtls = 2, Coapprototcp = 3,
      Coapprototls = 4
else:
  static :
    hint("Declaration of " & "enum_coap_proto_t" &
        " already exists, not redeclaring")
when not declared(logt):
  type
    logt* {.size: sizeof(cuint).} = enum
      Logemerg = 0, Logalert = 1, Logcrit = 2, Logerr = 3, Logwarning = 4,
      Lognotice = 5, Loginfo = 6, Logdebug = 7, Coaplogciphers = 9
else:
  static :
    hint("Declaration of " & "coap_log_t" & " already exists, not redeclaring")
when not declared(structcachekeyt):
  type
    structcachekeyt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_cache_key_t" &
        " already exists, not redeclaring")
when not declared(structlgcrcvt):
  type
    structlgcrcvt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_lg_crcv_t" &
        " already exists, not redeclaring")
when not declared(Coaprunnonblockdeprecatedusecoapionowait):
  type
    Coaprunnonblockdeprecatedusecoapionowait* = distinct object
else:
  static :
    hint("Declaration of " & "COAP_RUN_NONBLOCK_deprecated_use_COAP_IO_NO_WAIT" &
        " already exists, not redeclaring")
when not declared(Coaprunblockdeprecatedusecoapiowait):
  type
    Coaprunblockdeprecatedusecoapiowait* = distinct object
else:
  static :
    hint("Declaration of " & "COAP_RUN_BLOCK_deprecated_use_COAP_IO_WAIT" &
        " already exists, not redeclaring")
when not declared(structresourcet):
  type
    structresourcet* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_resource_t" &
        " already exists, not redeclaring")
when not declared(stderr):
  type
    stderr* = distinct object
else:
  static :
    hint("Declaration of " & "stderr" & " already exists, not redeclaring")
when not declared(structcontextt):
  type
    structcontextt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_context_t" &
        " already exists, not redeclaring")
when not declared(structlgxmitt):
  type
    structlgxmitt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_lg_xmit_t" &
        " already exists, not redeclaring")
when not declared(structaddrhasht):
  type
    structaddrhasht* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_addr_hash_t" &
        " already exists, not redeclaring")
when not declared(structasynct):
  type
    structasynct* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_async_t" &
        " already exists, not redeclaring")
when not declared(structsockett):
  type
    structsockett* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_socket_t" &
        " already exists, not redeclaring")
when not declared(structattrt):
  type
    structattrt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_attr_t" &
        " already exists, not redeclaring")
when not declared(close):
  type
    close* = distinct object
else:
  static :
    hint("Declaration of " & "close" & " already exists, not redeclaring")
when not declared(structpackett):
  type
    structpackett* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_packet_t" &
        " already exists, not redeclaring")
when not declared(structepollevent):
  type
    structepollevent* = distinct object
else:
  static :
    hint("Declaration of " & "struct_epoll_event" &
        " already exists, not redeclaring")
when not declared(structqueuet):
  type
    structqueuet* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_queue_t" &
        " already exists, not redeclaring")
when not declared(stdout):
  type
    stdout* = distinct object
else:
  static :
    hint("Declaration of " & "stdout" & " already exists, not redeclaring")
when not declared(structsessiont):
  type
    structsessiont* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_session_t" &
        " already exists, not redeclaring")
when not declared(structendpointt):
  type
    structendpointt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_endpoint_t" &
        " already exists, not redeclaring")
when not declared(structcacheentryt):
  type
    structcacheentryt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_cache_entry_t" &
        " already exists, not redeclaring")
when not declared(structlgsrcvt):
  type
    structlgsrcvt* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_lg_srcv_t" &
        " already exists, not redeclaring")
when not declared(structpdut):
  type
    structpdut* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_pdu_t" &
        " already exists, not redeclaring")
when not declared(Null):
  type
    Null* = distinct object
else:
  static :
    hint("Declaration of " & "NULL" & " already exists, not redeclaring")
when not declared(structsubscriptiont):
  type
    structsubscriptiont* = distinct object
else:
  static :
    hint("Declaration of " & "struct_coap_subscription_t" &
        " already exists, not redeclaring")
type
  pkikeyt_1023410506* = enumpkikeyt_1023410582 ## Generated based on /usr/include/coap3/coap_dtls.h:153:3
  structpkikeypembuft_1023410509* = object
    cacert*: ptr uint8       ## Generated based on /usr/include/coap3/coap_dtls.h:173:16
    publiccert*: ptr uint8
    privatekey*: ptr uint8
    cacertlen*: csize_t
    publiccertlen*: csize_t
    privatekeylen*: csize_t

  blockt_1023410515* = object
    num*: cuint              ## Generated based on /usr/include/coap3/block.h:35:9
    m*: cuint
    szx*: cuint

  structaddresst_addrfield_t* {.union.} = object
    sa*: structsockaddr_1023410649
    sin*: structsockaddrin_1023410653
    sin6*: structsockaddrin6_1023410657

  structaddresst_1023410517* = object
    size*: socklent_1023410745 ## Generated based on /usr/include/coap3/address.h:96:16
    addrfield*: structaddresst_addrfield_t

  loghandlert_1023410519* = proc (a0: logt_1023410781; a1: cstring): void {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_debug.h:103:16
  responset_1023410521* = enumresponset_1023410729 ## Generated based on /usr/include/coap3/net.h:41:3
  addrtuplet_1023410523* = structaddrtuplet_1023410759 ## Generated based on /usr/include/coap3/coap_io.h:53:3
  contextt_1023410525* = structcontextt ## Generated based on /usr/include/coap3/coap_forward_decls.h:73:31
  tlsversiont_1023410529* = structtlsversiont_1023410775 ## Generated based on /usr/include/coap3/coap_dtls.h:68:3
  midt_1023410531* = cint    ## Generated based on /usr/include/coap3/pdu.h:231:13
  structin6addr_compilerin6u_t* {.union.} = object
    compileru6addr8*: array[16'i64, uint8]
    compileru6addr16*: array[8'i64, uint16]
    compileru6addr32*: array[4'i64, uint32]

  structin6addr_1023410533* = object
    compilerin6u*: structin6addr_compilerin6u_t ## Generated based on /usr/include/netinet/in.h:219:8
  
  strconstt_1023410535* = structstrconstt_1023410558 ## Generated based on /usr/include/coap3/str.h:43:3
  optionnumt_1023410539* = uint16 ## Generated based on /usr/include/coap3/option.h:20:18
  protot_1023410541* = enumprotot_1023410771 ## Generated based on /usr/include/coap3/pdu.h:286:3
  structfixedpointt_1023410543* = object
    integerpart*: uint16     ## Generated based on /usr/include/coap3/coap_session.h:29:16
    fractionalpart*: uint16

  dtlssecuritysetupt_1023410545* = proc (a0: pointer; a1: ptr dtlspkit_1023410663): cint {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_dtls.h:92:15
  pdutypet_1023410547* = enumpdutypet_1023410711 ## Generated based on /usr/include/coap3/pdu.h:61:3
  dtlscpskt_1023410549* = structdtlscpskt_1023410785 ## Generated based on /usr/include/coap3/coap_dtls.h:368:3
  asn1privatekeytypet_1023410551* = enumasn1privatekeytypet_1023410707 ## Generated based on /usr/include/coap3/coap_dtls.h:143:3
  sessiont_1023410553* = structsessiont ## Generated based on /usr/include/coap3/coap_forward_decls.h:98:31
  dtlsspskinfot_1023410555* = structdtlsspskinfot_1023410765 ## Generated based on /usr/include/coap3/coap_dtls.h:377:3
  structstrconstt_1023410557* = object
    length*: csize_t         ## Generated based on /usr/include/coap3/str.h:40:16
    s*: ptr uint8

  dtlspsksnicallbackt_1023410559* = proc (a0: cstring; a1: ptr sessiont_1023410554;
      a2: pointer): ptr dtlsspskinfot_1023410556 {.cdecl.} ## Generated based on /usr/include/coap3/coap_dtls.h:415:40
  dtlsihcallbackt_1023410561* = proc (a0: ptr strconstt_1023410536;
                                      a1: ptr sessiont_1023410554; a2: pointer): ptr dtlscpskinfot_1023410715 {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_dtls.h:328:40
  eventt_1023410563* = cuint ## Generated based on /usr/include/coap3/coap_event.h:27:23
  structdtlscpskinfot_1023410565* = object
    identity*: binconstt_1023410723 ## Generated based on /usr/include/coap3/coap_dtls.h:307:16
    key*: binconstt_1023410723

  lgcrcvt_1023410567* = structlgcrcvt ## Generated based on /usr/include/coap3/coap_forward_decls.h:49:31
  optt_1023410569* = uint8   ## Generated based on /usr/include/coap3/option.h:26:17
  safamilyt_1023410571* = cushort ## Generated based on /usr/include/bits/sockaddr.h:28:28
  pkikeypembuft_1023410573* = structpkikeypembuft_1023410510 ## Generated based on /usr/include/coap3/coap_dtls.h:182:3
  structdtlspkit_1023410575* = object
    version*: uint8          ## Generated based on /usr/include/coap3/coap_dtls.h:244:8
    verifypeercert*: uint8
    checkcommonca*: uint8
    allowselfsigned*: uint8
    allowexpiredcerts*: uint8
    certchainvalidation*: uint8
    certchainverifydepth*: uint8
    checkcertrevocation*: uint8
    allownocrl*: uint8
    allowexpiredcrl*: uint8
    allowbadmdhash*: uint8
    allowshortrsalength*: uint8
    isrpknotcert*: uint8
    reserved*: array[3'i64, uint8]
    validatecncallback*: dtlscncallbackt_1023410773
    cncallbackarg*: pointer
    validatesnicallback*: dtlspkisnicallbackt_1023410725
    snicallbackarg*: pointer
    additionaltlssetupcallback*: dtlssecuritysetupt_1023410546
    clientsni*: cstring
    pkikey*: dtlskeyt_1023410661

  methodhandlert_1023410577* = proc (a0: ptr resourcet_1023410597;
                                     a1: ptr sessiont_1023410554; a2: ptr pdut_1023410619;
                                     a3: ptr stringt_1023410593; a4: ptr pdut_1023410619): void {.
      cdecl.}                ## Generated based on /usr/include/coap3/resource.h:41:16
  nackhandlert_1023410579* = proc (a0: ptr sessiont_1023410554; a1: ptr pdut_1023410619;
                                   a2: nackreasont_1023410755; a3: midt_1023410532): void {.
      cdecl.}                ## Generated based on /usr/include/coap3/net.h:67:16
  releaselargedatat_1023410583* = proc (a0: ptr sessiont_1023410554; a1: pointer): void {.
      cdecl.}                ## Generated based on /usr/include/coap3/block.h:197:16
  stringt_1023410592* = structstringt_1023410739 ## Generated based on /usr/include/coap3/str.h:35:3
  optfiltert_1023410594* = structoptfiltert_1023410701 ## Generated based on /usr/include/coap3/option.h:104:3
  resourcet_1023410596* = structresourcet ## Generated based on /usr/include/coap3/coap_forward_decls.h:89:32
  pdusignalingprotot_1023410600* = enumpdusignalingprotot_1023410621 ## Generated based on /usr/include/coap3/pdu.h:174:3
  urischemet_1023410602* = enumurischemet_1023410655 ## Generated based on /usr/include/coap3/uri.h:30:3
  resourcereleaseuserdatahandlert_1023410604* = proc (a0: pointer): void {.cdecl.} ## Generated based on /usr/include/coap3/resource.h:212:16
  compilertimet_1023410606* = clong ## Generated based on /usr/include/bits/types.h:160:26
  optiont_1023410608* = object
    delta*: uint16           ## Generated based on /usr/include/coap3/option.h:32:9
    length*: csize_t
    value*: ptr uint8

  asynct_1023410610* = structasynct ## Generated based on /usr/include/coap3/coap_forward_decls.h:41:29
  dtlsidcallbackt_1023410612* = proc (a0: ptr binconstt_1023410723;
                                      a1: ptr sessiont_1023410554; a2: pointer): ptr binconstt_1023410723 {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_dtls.h:397:35
  structoptlistt_1023410616* = object
    next*: ptr structoptlistt_1023410617 ## Generated based on /usr/include/coap3/option.h:327:16
    number*: uint16
    length*: csize_t
    data*: ptr uint8

  pdut_1023410618* = structpdut ## Generated based on /usr/include/coap3/coap_forward_decls.h:81:27
  ponghandlert_1023410622* = proc (a0: ptr sessiont_1023410554; a1: ptr pdut_1023410619;
                                   a2: midt_1023410532): void {.cdecl.} ## Generated based on /usr/include/coap3/net.h:90:16
  randfunct_1023410624* = proc (a0: pointer; a1: csize_t): cint {.cdecl.} ## Generated based on /usr/include/coap3/coap_prng.h:77:15
  urit_1023410626* = object
    host*: strconstt_1023410536 ## Generated based on /usr/include/coap3/uri.h:40:9
    port*: uint16
    path*: strconstt_1023410536
    query*: strconstt_1023410536
    scheme*: enumurischemet_1023410655

  lgxmitt_1023410628* = structlgxmitt ## Generated based on /usr/include/coap3/coap_forward_decls.h:48:31
  timet_1023410630* = timettypedef_1023410737 ## Generated based on /usr/include/coap3/coap_time.h:127:16
  structbinaryt_1023410632* = object
    length*: csize_t         ## Generated based on /usr/include/coap3/str.h:50:16
    s*: ptr uint8

  packett_1023410634* = structpackett ## Generated based on /usr/include/coap3/coap_forward_decls.h:65:30
  structdtlsspskt_1023410636* = object
    version*: uint8          ## Generated based on /usr/include/coap3/coap_dtls.h:425:16
    reserved*: array[7'i64, uint8]
    validateidcallback*: dtlsidcallbackt_1023410613
    idcallbackarg*: pointer
    validatesnicallback*: dtlspsksnicallbackt_1023410560
    snicallbackarg*: pointer
    pskinfo*: dtlsspskinfot_1023410556

  pkikeyasn1t_1023410638* = structpkikeyasn1t_1023410735 ## Generated based on /usr/include/coap3/coap_dtls.h:195:3
  pinghandlert_1023410640* = proc (a0: ptr sessiont_1023410554; a1: ptr pdut_1023410619;
                                   a2: midt_1023410532): void {.cdecl.} ## Generated based on /usr/include/coap3/net.h:79:16
  tlslibraryt_1023410642* = enumtlslibraryt_1023410538 ## Generated based on /usr/include/coap3/coap_dtls.h:58:3
  cachekeyt_1023410644* = structcachekeyt ## Generated based on /usr/include/coap3/coap_forward_decls.h:58:33
  compilerfdmask_1023410646* = clong ## Generated based on /usr/include/sys/select.h:49:18
  structsockaddr_1023410648* = object
    safamily*: safamilyt_1023410572 ## Generated based on /usr/include/bits/socket.h:180:8
    sadata*: array[14'i64, cschar]

  fdset_1023410650* = object
    compilerfdsbits*: array[16'i64, compilerfdmask_1023410647] ## Generated based on /usr/include/sys/select.h:59:9
  
  structsockaddrin_1023410652* = object
    sinfamily*: safamilyt_1023410572 ## Generated based on /usr/include/netinet/in.h:245:8
    sinport*: inportt_1023410693
    sinaddr*: structinaddr_1023410733
    sinzero*: array[8'i64, cuchar]

  structsockaddrin6_1023410656* = object
    sin6family*: safamilyt_1023410572 ## Generated based on /usr/include/netinet/in.h:260:8
    sin6port*: inportt_1023410693
    sin6flowinfo*: uint32
    sin6addr*: structin6addr_1023410534
    sin6scopeid*: uint32

  socketflagst_1023410658* = uint16 ## Generated based on /usr/include/coap3/coap_io.h:48:18
  dtlskeyt_1023410660* = structdtlskeyt_1023410721 ## Generated based on /usr/include/coap3/coap_dtls.h:220:3
  dtlspkit_1023410662* = structdtlspkit_1023410576 ## Generated based on /usr/include/coap3/coap_dtls.h:25:32
  optlistt_1023410664* = structoptlistt_1023410617 ## Generated based on /usr/include/coap3/option.h:332:3
  cacheentryt_1023410666* = structcacheentryt ## Generated based on /usr/include/coap3/coap_forward_decls.h:57:35
  responsehandlert_1023410668* = proc (a0: ptr sessiont_1023410554;
                                       a1: ptr pdut_1023410619; a2: ptr pdut_1023410619;
                                       a3: midt_1023410532): responset_1023410522 {.
      cdecl.}                ## Generated based on /usr/include/coap3/net.h:54:27
  attrt_1023410672* = structattrt ## Generated based on /usr/include/coap3/coap_forward_decls.h:88:28
  addresst_1023410674* = structaddresst_1023410518 ## Generated based on /usr/include/coap3/address.h:103:3
  dtlsrolet_1023410676* = enumdtlsrolet_1023410514 ## Generated based on /usr/include/coap3/coap_dtls.h:34:3
  fixedpointt_1023410678* = structfixedpointt_1023410544 ## Generated based on /usr/include/coap3/coap_session.h:33:3
  structpkikeypemt_1023410680* = object
    cafile*: cstring         ## Generated based on /usr/include/coap3/coap_dtls.h:158:16
    publiccert*: cstring
    privatekey*: cstring

  compilersocklent_1023410682* = cuint ## Generated based on /usr/include/bits/types.h:210:23
  tickt_1023410684* = uint64 ## Generated based on /usr/include/coap3/coap_time.h:122:18
  fdt_1023410686* = cint     ## Generated based on /usr/include/coap3/coap_io.h:42:13
  pkikeypkcs11t_1023410688* = structpkikeypkcs11t_1023410717 ## Generated based on /usr/include/coap3/coap_dtls.h:207:3
  lgsrcvt_1023410690* = structlgsrcvt ## Generated based on /usr/include/coap3/coap_forward_decls.h:50:31
  inportt_1023410692* = uint16 ## Generated based on /usr/include/netinet/in.h:123:18
  sessiontypet_1023410694* = enumsessiontypet_1023410713 ## Generated based on /usr/include/coap3/coap_session.h:47:3
  sockett_1023410696* = structsockett ## Generated based on /usr/include/coap3/coap_forward_decls.h:66:30
  optiteratort_1023410698* = object
    length*: csize_t         ## Generated based on /usr/include/coap3/option.h:170:9
    number*: optionnumt_1023410540
    bad*: cuint
    filtered*: cuint
    nextoption*: ptr optt_1023410570
    filter*: optfiltert_1023410595

  structoptfiltert_1023410700* = object
    mask*: uint16            ## Generated based on /usr/include/coap3/option.h:100:16
    longopts*: array[2'i64, uint16]
    shortopts*: array[6'i64, uint8]

  endpointt_1023410702* = structendpointt ## Generated based on /usr/include/coap3/coap_forward_decls.h:97:32
  printstatust_1023410704* = cuint ## Generated based on /usr/include/coap3/resource.h:324:22
  dtlscpskinfot_1023410714* = structdtlscpskinfot_1023410566 ## Generated based on /usr/include/coap3/coap_dtls.h:310:3
  structpkikeypkcs11t_1023410716* = object
    ca*: cstring             ## Generated based on /usr/include/coap3/coap_dtls.h:200:16
    publiccert*: cstring
    privatekey*: cstring
    userpin*: cstring

  cacheappdatafreecallbackt_1023410718* = proc (a0: pointer): void {.cdecl.} ## Generated based on /usr/include/coap3/coap_cache.h:33:16
  structdtlskeyt_key_t* {.union.} = object
    pem*: pkikeypemt_1023410749
    pembuf*: pkikeypembuft_1023410574
    asn1*: pkikeyasn1t_1023410639
    pkcs11*: pkikeypkcs11t_1023410689

  structdtlskeyt_1023410720* = object
    keytype*: pkikeyt_1023410508 ## Generated based on /usr/include/coap3/coap_dtls.h:212:16
    key*: structdtlskeyt_key_t

  binconstt_1023410722* = structbinconstt_1023410783 ## Generated based on /usr/include/coap3/str.h:61:3
  dtlspkisnicallbackt_1023410724* = proc (a0: cstring; a1: pointer): ptr dtlskeyt_1023410661 {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_dtls.h:235:28
  pducodet_1023410726* = enumpducodet_1023410615 ## Generated based on /usr/include/coap3/pdu.h:336:3
  requestt_1023410730* = enumrequestt_1023410671 ## Generated based on /usr/include/coap3/pdu.h:74:3
  structinaddr_1023410732* = object
    saddr*: inaddrt_1023410763 ## Generated based on /usr/include/netinet/in.h:31:8
  
  structpkikeyasn1t_1023410734* = object
    cacert*: ptr uint8       ## Generated based on /usr/include/coap3/coap_dtls.h:187:16
    publiccert*: ptr uint8
    privatekey*: ptr uint8
    cacertlen*: csize_t
    publiccertlen*: csize_t
    privatekeylen*: csize_t
    privatekeytype*: asn1privatekeytypet_1023410552

  timettypedef_1023410736* = compilertimet_1023410607 ## Generated based on /usr/include/bits/types/time_t.h:10:18
  structstringt_1023410738* = object
    length*: csize_t         ## Generated based on /usr/include/coap3/str.h:32:16
    s*: ptr uint8

  option_1023410740* = object
    key*: uint16             ## Generated based on /usr/include/coap3/pdu.h:249:25
    length*: cuint

  tickdifft_1023410742* = int64 ## Generated based on /usr/include/coap3/coap_time.h:134:17
  socklent_1023410744* = compilersocklent_1023410683 ## Generated based on /usr/include/bits/socket.h:33:21
  sessionstatet_1023410746* = enumsessionstatet_1023410528 ## Generated based on /usr/include/coap3/coap_session.h:58:3
  pkikeypemt_1023410748* = structpkikeypemt_1023410681 ## Generated based on /usr/include/coap3/coap_dtls.h:162:3
  queuet_1023410750* = structqueuet ## Generated based on /usr/include/coap3/coap_forward_decls.h:74:29
  eventhandlert_1023410752* = proc (a0: ptr sessiont_1023410554; a1: eventt_1023410564): cint {.
      cdecl.}                ## Generated based on /usr/include/coap3/coap_event.h:63:15
  binaryt_1023410756* = structbinaryt_1023410633 ## Generated based on /usr/include/coap3/str.h:53:3
  structaddrtuplet_1023410758* = object
    remote*: addresst_1023410675 ## Generated based on /usr/include/coap3/coap_io.h:50:16
    local*: addresst_1023410675

  subscriptiont_1023410760* = structsubscriptiont ## Generated based on /usr/include/coap3/coap_forward_decls.h:105:36
  inaddrt_1023410762* = uint32 ## Generated based on /usr/include/netinet/in.h:30:18
  structdtlsspskinfot_1023410764* = object
    hint*: binconstt_1023410723 ## Generated based on /usr/include/coap3/coap_dtls.h:374:16
    key*: binconstt_1023410723

  cacherecordpdut_1023410766* = enumcacherecordpdut_1023410599 ## Generated based on /usr/include/coap3/coap_cache.h:43:3
  cachesessionbasedt_1023410768* = enumcachesessionbasedt_1023410512 ## Generated based on /usr/include/coap3/coap_cache.h:38:3
  dtlscncallbackt_1023410772* = proc (a0: cstring; a1: ptr uint8; a2: csize_t;
                                      a3: ptr sessiont_1023410554; a4: cuint;
                                      a5: cint; a6: pointer): cint {.cdecl.} ## Generated based on /usr/include/coap3/coap_dtls.h:115:15
  structtlsversiont_1023410774* = object
    version*: uint64         ## Generated based on /usr/include/coap3/coap_dtls.h:64:16
    typefield*: tlslibraryt_1023410643
    builtversion*: uint64

  addrhasht_1023410776* = structaddrhasht ## Generated based on /usr/include/coap3/coap_forward_decls.h:96:33
  dtlsspskt_1023410778* = structdtlsspskt_1023410637 ## Generated based on /usr/include/coap3/coap_dtls.h:456:3
  structbinconstt_1023410782* = object
    length*: csize_t         ## Generated based on /usr/include/coap3/str.h:58:16
    s*: ptr uint8

  structdtlscpskt_1023410784* = object
    version*: uint8          ## Generated based on /usr/include/coap3/coap_dtls.h:338:16
    reserved*: array[7'i64, uint8]
    validateihcallback*: dtlsihcallbackt_1023410562
    ihcallbackarg*: pointer
    clientsni*: cstring
    pskinfo*: dtlscpskinfot_1023410715

  pkikeyt_1023410508* = (when declared(pkikeyt):
    pkikeyt
   else:
    pkikeyt_1023410506)
  nackhandlert_1023410580* = (when declared(nackhandlert):
    nackhandlert
   else:
    nackhandlert_1023410579)
  enumpkikeyt_1023410582* = (when declared(enumpkikeyt):
    enumpkikeyt
   else:
    enumpkikeyt_1023410581)
  cachekeyt_1023410645* = (when declared(cachekeyt):
    cachekeyt
   else:
    cachekeyt_1023410644)
  cacheappdatafreecallbackt_1023410719* = (when declared(
      cacheappdatafreecallbackt):
    cacheappdatafreecallbackt
   else:
    cacheappdatafreecallbackt_1023410718)
  structdtlskeyt_1023410721* = (when declared(structdtlskeyt):
    structdtlskeyt
   else:
    structdtlskeyt_1023410720)
  releaselargedatat_1023410584* = (when declared(releaselargedatat):
    releaselargedatat
   else:
    releaselargedatat_1023410583)
  stringt_1023410593* = (when declared(stringt):
    stringt
   else:
    stringt_1023410592)
  compilerfdmask_1023410647* = (when declared(compilerfdmask):
    compilerfdmask
   else:
    compilerfdmask_1023410646)
  structpkikeypembuft_1023410510* = (when declared(structpkikeypembuft):
    structpkikeypembuft
   else:
    structpkikeypembuft_1023410509)
  structsockaddr_1023410649* = (when declared(structsockaddr):
    structsockaddr
   else:
    structsockaddr_1023410648)
  binconstt_1023410723* = (when declared(binconstt):
    binconstt
   else:
    binconstt_1023410722)
  structinaddr_1023410733* = (when declared(structinaddr):
    structinaddr
   else:
    structinaddr_1023410732)
  fdset_1023410651* = (when declared(fdset):
    fdset
   else:
    fdset_1023410650)
  dtlspkisnicallbackt_1023410725* = (when declared(dtlspkisnicallbackt):
    dtlspkisnicallbackt
   else:
    dtlspkisnicallbackt_1023410724)
  pducodet_1023410727* = (when declared(pducodet):
    pducodet
   else:
    pducodet_1023410726)
  enumresponset_1023410729* = (when declared(enumresponset):
    enumresponset
   else:
    enumresponset_1023410728)
  enumcachesessionbasedt_1023410512* = (when declared(enumcachesessionbasedt):
    enumcachesessionbasedt
   else:
    enumcachesessionbasedt_1023410511)
  structsockaddrin_1023410653* = (when declared(structsockaddrin):
    structsockaddrin
   else:
    structsockaddrin_1023410652)
  requestt_1023410731* = (when declared(requestt):
    requestt
   else:
    requestt_1023410730)
  enumurischemet_1023410655* = (when declared(enumurischemet):
    enumurischemet
   else:
    enumurischemet_1023410654)
  optfiltert_1023410595* = (when declared(optfiltert):
    optfiltert
   else:
    optfiltert_1023410594)
  structpkikeyasn1t_1023410735* = (when declared(structpkikeyasn1t):
    structpkikeyasn1t
   else:
    structpkikeyasn1t_1023410734)
  structsockaddrin6_1023410657* = (when declared(structsockaddrin6):
    structsockaddrin6
   else:
    structsockaddrin6_1023410656)
  enumdtlsrolet_1023410514* = (when declared(enumdtlsrolet):
    enumdtlsrolet
   else:
    enumdtlsrolet_1023410513)
  blockt_1023410516* = (when declared(blockt):
    blockt
   else:
    blockt_1023410515)
  structaddresst_1023410518* = (when declared(structaddresst):
    structaddresst
   else:
    structaddresst_1023410517)
  socketflagst_1023410659* = (when declared(socketflagst):
    socketflagst
   else:
    socketflagst_1023410658)
  dtlskeyt_1023410661* = (when declared(dtlskeyt):
    dtlskeyt
   else:
    dtlskeyt_1023410660)
  resourcet_1023410597* = (when declared(resourcet):
    resourcet
   else:
    resourcet_1023410596)
  loghandlert_1023410520* = (when declared(loghandlert):
    loghandlert
   else:
    loghandlert_1023410519)
  dtlspkit_1023410663* = (when declared(dtlspkit):
    dtlspkit
   else:
    dtlspkit_1023410662)
  optlistt_1023410665* = (when declared(optlistt):
    optlistt
   else:
    optlistt_1023410664)
  timettypedef_1023410737* = (when declared(timettypedef):
    timettypedef
   else:
    timettypedef_1023410736)
  structstringt_1023410739* = (when declared(structstringt):
    structstringt
   else:
    structstringt_1023410738)
  responset_1023410522* = (when declared(responset):
    responset
   else:
    responset_1023410521)
  cacheentryt_1023410667* = (when declared(cacheentryt):
    cacheentryt
   else:
    cacheentryt_1023410666)
  enumcacherecordpdut_1023410599* = (when declared(enumcacherecordpdut):
    enumcacherecordpdut
   else:
    enumcacherecordpdut_1023410598)
  addrtuplet_1023410524* = (when declared(addrtuplet):
    addrtuplet
   else:
    addrtuplet_1023410523)
  contextt_1023410526* = (when declared(contextt):
    contextt
   else:
    contextt_1023410525)
  pdusignalingprotot_1023410601* = (when declared(pdusignalingprotot):
    pdusignalingprotot
   else:
    pdusignalingprotot_1023410600)
  enumsessionstatet_1023410528* = (when declared(enumsessionstatet):
    enumsessionstatet
   else:
    enumsessionstatet_1023410527)
  urischemet_1023410603* = (when declared(urischemet):
    urischemet
   else:
    urischemet_1023410602)
  resourcereleaseuserdatahandlert_1023410605* = (when declared(
      resourcereleaseuserdatahandlert):
    resourcereleaseuserdatahandlert
   else:
    resourcereleaseuserdatahandlert_1023410604)
  option_1023410741* = (when declared(option):
    option
   else:
    option_1023410740)
  responsehandlert_1023410669* = (when declared(responsehandlert):
    responsehandlert
   else:
    responsehandlert_1023410668)
  compilertimet_1023410607* = (when declared(compilertimet):
    compilertimet
   else:
    compilertimet_1023410606)
  tickdifft_1023410743* = (when declared(tickdifft):
    tickdifft
   else:
    tickdifft_1023410742)
  socklent_1023410745* = (when declared(socklent):
    socklent
   else:
    socklent_1023410744)
  tlsversiont_1023410530* = (when declared(tlsversiont):
    tlsversiont
   else:
    tlsversiont_1023410529)
  enumrequestt_1023410671* = (when declared(enumrequestt):
    enumrequestt
   else:
    enumrequestt_1023410670)
  optiont_1023410609* = (when declared(optiont):
    optiont
   else:
    optiont_1023410608)
  midt_1023410532* = (when declared(midt):
    midt
   else:
    midt_1023410531)
  sessionstatet_1023410747* = (when declared(sessionstatet):
    sessionstatet
   else:
    sessionstatet_1023410746)
  structin6addr_1023410534* = (when declared(structin6addr):
    structin6addr
   else:
    structin6addr_1023410533)
  attrt_1023410673* = (when declared(attrt):
    attrt
   else:
    attrt_1023410672)
  asynct_1023410611* = (when declared(asynct):
    asynct
   else:
    asynct_1023410610)
  addresst_1023410675* = (when declared(addresst):
    addresst
   else:
    addresst_1023410674)
  pkikeypemt_1023410749* = (when declared(pkikeypemt):
    pkikeypemt
   else:
    pkikeypemt_1023410748)
  dtlsrolet_1023410677* = (when declared(dtlsrolet):
    dtlsrolet
   else:
    dtlsrolet_1023410676)
  fixedpointt_1023410679* = (when declared(fixedpointt):
    fixedpointt
   else:
    fixedpointt_1023410678)
  structpkikeypemt_1023410681* = (when declared(structpkikeypemt):
    structpkikeypemt
   else:
    structpkikeypemt_1023410680)
  dtlsidcallbackt_1023410613* = (when declared(dtlsidcallbackt):
    dtlsidcallbackt
   else:
    dtlsidcallbackt_1023410612)
  queuet_1023410751* = (when declared(queuet):
    queuet
   else:
    queuet_1023410750)
  eventhandlert_1023410753* = (when declared(eventhandlert):
    eventhandlert
   else:
    eventhandlert_1023410752)
  enumpducodet_1023410615* = (when declared(enumpducodet):
    enumpducodet
   else:
    enumpducodet_1023410614)
  strconstt_1023410536* = (when declared(strconstt):
    strconstt
   else:
    strconstt_1023410535)
  enumtlslibraryt_1023410538* = (when declared(enumtlslibraryt):
    enumtlslibraryt
   else:
    enumtlslibraryt_1023410537)
  optionnumt_1023410540* = (when declared(optionnumt):
    optionnumt
   else:
    optionnumt_1023410539)
  nackreasont_1023410755* = (when declared(nackreasont):
    nackreasont
   else:
    nackreasont_1023410754)
  protot_1023410542* = (when declared(protot):
    protot
   else:
    protot_1023410541)
  structfixedpointt_1023410544* = (when declared(structfixedpointt):
    structfixedpointt
   else:
    structfixedpointt_1023410543)
  structoptlistt_1023410617* = (when declared(structoptlistt):
    structoptlistt
   else:
    structoptlistt_1023410616)
  pdut_1023410619* = (when declared(pdut):
    pdut
   else:
    pdut_1023410618)
  enumpdusignalingprotot_1023410621* = (when declared(enumpdusignalingprotot):
    enumpdusignalingprotot
   else:
    enumpdusignalingprotot_1023410620)
  randfunct_1023410625* = (when declared(randfunct):
    randfunct
   else:
    randfunct_1023410624)
  ponghandlert_1023410623* = (when declared(ponghandlert):
    ponghandlert
   else:
    ponghandlert_1023410622)
  dtlssecuritysetupt_1023410546* = (when declared(dtlssecuritysetupt):
    dtlssecuritysetupt
   else:
    dtlssecuritysetupt_1023410545)
  compilersocklent_1023410683* = (when declared(compilersocklent):
    compilersocklent
   else:
    compilersocklent_1023410682)
  binaryt_1023410757* = (when declared(binaryt):
    binaryt
   else:
    binaryt_1023410756)
  structaddrtuplet_1023410759* = (when declared(structaddrtuplet):
    structaddrtuplet
   else:
    structaddrtuplet_1023410758)
  tickt_1023410685* = (when declared(tickt):
    tickt
   else:
    tickt_1023410684)
  subscriptiont_1023410761* = (when declared(subscriptiont):
    subscriptiont
   else:
    subscriptiont_1023410760)
  pdutypet_1023410548* = (when declared(pdutypet):
    pdutypet
   else:
    pdutypet_1023410547)
  fdt_1023410687* = (when declared(fdt):
    fdt
   else:
    fdt_1023410686)
  inaddrt_1023410763* = (when declared(inaddrt):
    inaddrt
   else:
    inaddrt_1023410762)
  dtlscpskt_1023410550* = (when declared(dtlscpskt):
    dtlscpskt
   else:
    dtlscpskt_1023410549)
  asn1privatekeytypet_1023410552* = (when declared(asn1privatekeytypet):
    asn1privatekeytypet
   else:
    asn1privatekeytypet_1023410551)
  pkikeypkcs11t_1023410689* = (when declared(pkikeypkcs11t):
    pkikeypkcs11t
   else:
    pkikeypkcs11t_1023410688)
  structdtlsspskinfot_1023410765* = (when declared(structdtlsspskinfot):
    structdtlsspskinfot
   else:
    structdtlsspskinfot_1023410764)
  sessiont_1023410554* = (when declared(sessiont):
    sessiont
   else:
    sessiont_1023410553)
  cacherecordpdut_1023410767* = (when declared(cacherecordpdut):
    cacherecordpdut
   else:
    cacherecordpdut_1023410766)
  lgsrcvt_1023410691* = (when declared(lgsrcvt):
    lgsrcvt
   else:
    lgsrcvt_1023410690)
  cachesessionbasedt_1023410769* = (when declared(cachesessionbasedt):
    cachesessionbasedt
   else:
    cachesessionbasedt_1023410768)
  inportt_1023410693* = (when declared(inportt):
    inportt
   else:
    inportt_1023410692)
  urit_1023410627* = (when declared(urit):
    urit
   else:
    urit_1023410626)
  enumprotot_1023410771* = (when declared(enumprotot):
    enumprotot
   else:
    enumprotot_1023410770)
  lgxmitt_1023410629* = (when declared(lgxmitt):
    lgxmitt
   else:
    lgxmitt_1023410628)
  sessiontypet_1023410695* = (when declared(sessiontypet):
    sessiontypet
   else:
    sessiontypet_1023410694)
  dtlscncallbackt_1023410773* = (when declared(dtlscncallbackt):
    dtlscncallbackt
   else:
    dtlscncallbackt_1023410772)
  sockett_1023410697* = (when declared(sockett):
    sockett
   else:
    sockett_1023410696)
  dtlsspskinfot_1023410556* = (when declared(dtlsspskinfot):
    dtlsspskinfot
   else:
    dtlsspskinfot_1023410555)
  timet_1023410631* = (when declared(timet):
    timet
   else:
    timet_1023410630)
  structbinaryt_1023410633* = (when declared(structbinaryt):
    structbinaryt
   else:
    structbinaryt_1023410632)
  optiteratort_1023410699* = (when declared(optiteratort):
    optiteratort
   else:
    optiteratort_1023410698)
  structtlsversiont_1023410775* = (when declared(structtlsversiont):
    structtlsversiont
   else:
    structtlsversiont_1023410774)
  structstrconstt_1023410558* = (when declared(structstrconstt):
    structstrconstt
   else:
    structstrconstt_1023410557)
  dtlspsksnicallbackt_1023410560* = (when declared(dtlspsksnicallbackt):
    dtlspsksnicallbackt
   else:
    dtlspsksnicallbackt_1023410559)
  structoptfiltert_1023410701* = (when declared(structoptfiltert):
    structoptfiltert
   else:
    structoptfiltert_1023410700)
  packett_1023410635* = (when declared(packett):
    packett
   else:
    packett_1023410634)
  structdtlsspskt_1023410637* = (when declared(structdtlsspskt):
    structdtlsspskt
   else:
    structdtlsspskt_1023410636)
  endpointt_1023410703* = (when declared(endpointt):
    endpointt
   else:
    endpointt_1023410702)
  printstatust_1023410705* = (when declared(printstatust):
    printstatust
   else:
    printstatust_1023410704)
  enumasn1privatekeytypet_1023410707* = (when declared(enumasn1privatekeytypet):
    enumasn1privatekeytypet
   else:
    enumasn1privatekeytypet_1023410706)
  dtlsihcallbackt_1023410562* = (when declared(dtlsihcallbackt):
    dtlsihcallbackt
   else:
    dtlsihcallbackt_1023410561)
  addrhasht_1023410777* = (when declared(addrhasht):
    addrhasht
   else:
    addrhasht_1023410776)
  eventt_1023410564* = (when declared(eventt):
    eventt
   else:
    eventt_1023410563)
  structdtlscpskinfot_1023410566* = (when declared(structdtlscpskinfot):
    structdtlscpskinfot
   else:
    structdtlscpskinfot_1023410565)
  memorytagt_1023410709* = (when declared(memorytagt):
    memorytagt
   else:
    memorytagt_1023410708)
  dtlsspskt_1023410779* = (when declared(dtlsspskt):
    dtlsspskt
   else:
    dtlsspskt_1023410778)
  logt_1023410781* = (when declared(logt):
    logt
   else:
    logt_1023410780)
  pkikeyasn1t_1023410639* = (when declared(pkikeyasn1t):
    pkikeyasn1t
   else:
    pkikeyasn1t_1023410638)
  enumpdutypet_1023410711* = (when declared(enumpdutypet):
    enumpdutypet
   else:
    enumpdutypet_1023410710)
  pinghandlert_1023410641* = (when declared(pinghandlert):
    pinghandlert
   else:
    pinghandlert_1023410640)
  lgcrcvt_1023410568* = (when declared(lgcrcvt):
    lgcrcvt
   else:
    lgcrcvt_1023410567)
  enumsessiontypet_1023410713* = (when declared(enumsessiontypet):
    enumsessiontypet
   else:
    enumsessiontypet_1023410712)
  optt_1023410570* = (when declared(optt):
    optt
   else:
    optt_1023410569)
  safamilyt_1023410572* = (when declared(safamilyt):
    safamilyt
   else:
    safamilyt_1023410571)
  pkikeypembuft_1023410574* = (when declared(pkikeypembuft):
    pkikeypembuft
   else:
    pkikeypembuft_1023410573)
  structdtlspkit_1023410576* = (when declared(structdtlspkit):
    structdtlspkit
   else:
    structdtlspkit_1023410575)
  dtlscpskinfot_1023410715* = (when declared(dtlscpskinfot):
    dtlscpskinfot
   else:
    dtlscpskinfot_1023410714)
  structpkikeypkcs11t_1023410717* = (when declared(structpkikeypkcs11t):
    structpkikeypkcs11t
   else:
    structpkikeypkcs11t_1023410716)
  methodhandlert_1023410578* = (when declared(methodhandlert):
    methodhandlert
   else:
    methodhandlert_1023410577)
  structbinconstt_1023410783* = (when declared(structbinconstt):
    structbinconstt
   else:
    structbinconstt_1023410782)
  structdtlscpskt_1023410785* = (when declared(structdtlscpskt):
    structdtlscpskt
   else:
    structdtlscpskt_1023410784)
  tlslibraryt_1023410643* = (when declared(tlslibraryt):
    tlslibraryt
   else:
    tlslibraryt_1023410642)
when not declared(pkikeyt):
  type
    pkikeyt* = pkikeyt_1023410506
else:
  static :
    hint("Declaration of " & "coap_pki_key_t" &
        " already exists, not redeclaring")
when not declared(nackhandlert):
  type
    nackhandlert* = nackhandlert_1023410579
else:
  static :
    hint("Declaration of " & "coap_nack_handler_t" &
        " already exists, not redeclaring")
when not declared(cachekeyt):
  type
    cachekeyt* = cachekeyt_1023410644
else:
  static :
    hint("Declaration of " & "coap_cache_key_t" &
        " already exists, not redeclaring")
when not declared(cacheappdatafreecallbackt):
  type
    cacheappdatafreecallbackt* = cacheappdatafreecallbackt_1023410718
else:
  static :
    hint("Declaration of " & "coap_cache_app_data_free_callback_t" &
        " already exists, not redeclaring")
when not declared(structdtlskeyt):
  type
    structdtlskeyt* = structdtlskeyt_1023410720
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_key_t" &
        " already exists, not redeclaring")
when not declared(releaselargedatat):
  type
    releaselargedatat* = releaselargedatat_1023410583
else:
  static :
    hint("Declaration of " & "coap_release_large_data_t" &
        " already exists, not redeclaring")
when not declared(stringt):
  type
    stringt* = stringt_1023410592
else:
  static :
    hint("Declaration of " & "coap_string_t" &
        " already exists, not redeclaring")
when not declared(compilerfdmask):
  type
    compilerfdmask* = compilerfdmask_1023410646
else:
  static :
    hint("Declaration of " & "__fd_mask" & " already exists, not redeclaring")
when not declared(structpkikeypembuft):
  type
    structpkikeypembuft* = structpkikeypembuft_1023410509
else:
  static :
    hint("Declaration of " & "struct_coap_pki_key_pem_buf_t" &
        " already exists, not redeclaring")
when not declared(structsockaddr):
  type
    structsockaddr* = structsockaddr_1023410648
else:
  static :
    hint("Declaration of " & "struct_sockaddr" &
        " already exists, not redeclaring")
when not declared(binconstt):
  type
    binconstt* = binconstt_1023410722
else:
  static :
    hint("Declaration of " & "coap_bin_const_t" &
        " already exists, not redeclaring")
when not declared(structinaddr):
  type
    structinaddr* = structinaddr_1023410732
else:
  static :
    hint("Declaration of " & "struct_in_addr" &
        " already exists, not redeclaring")
when not declared(fdset):
  type
    fdset* = fdset_1023410650
else:
  static :
    hint("Declaration of " & "fd_set" & " already exists, not redeclaring")
when not declared(dtlspkisnicallbackt):
  type
    dtlspkisnicallbackt* = dtlspkisnicallbackt_1023410724
else:
  static :
    hint("Declaration of " & "coap_dtls_pki_sni_callback_t" &
        " already exists, not redeclaring")
when not declared(pducodet):
  type
    pducodet* = pducodet_1023410726
else:
  static :
    hint("Declaration of " & "coap_pdu_code_t" &
        " already exists, not redeclaring")
when not declared(structsockaddrin):
  type
    structsockaddrin* = structsockaddrin_1023410652
else:
  static :
    hint("Declaration of " & "struct_sockaddr_in" &
        " already exists, not redeclaring")
when not declared(requestt):
  type
    requestt* = requestt_1023410730
else:
  static :
    hint("Declaration of " & "coap_request_t" &
        " already exists, not redeclaring")
when not declared(optfiltert):
  type
    optfiltert* = optfiltert_1023410594
else:
  static :
    hint("Declaration of " & "coap_opt_filter_t" &
        " already exists, not redeclaring")
when not declared(structpkikeyasn1t):
  type
    structpkikeyasn1t* = structpkikeyasn1t_1023410734
else:
  static :
    hint("Declaration of " & "struct_coap_pki_key_asn1_t" &
        " already exists, not redeclaring")
when not declared(structsockaddrin6):
  type
    structsockaddrin6* = structsockaddrin6_1023410656
else:
  static :
    hint("Declaration of " & "struct_sockaddr_in6" &
        " already exists, not redeclaring")
when not declared(blockt):
  type
    blockt* = blockt_1023410515
else:
  static :
    hint("Declaration of " & "coap_block_t" & " already exists, not redeclaring")
when not declared(structaddresst):
  type
    structaddresst* = structaddresst_1023410517
else:
  static :
    hint("Declaration of " & "struct_coap_address_t" &
        " already exists, not redeclaring")
when not declared(socketflagst):
  type
    socketflagst* = socketflagst_1023410658
else:
  static :
    hint("Declaration of " & "coap_socket_flags_t" &
        " already exists, not redeclaring")
when not declared(dtlskeyt):
  type
    dtlskeyt* = dtlskeyt_1023410660
else:
  static :
    hint("Declaration of " & "coap_dtls_key_t" &
        " already exists, not redeclaring")
when not declared(resourcet):
  type
    resourcet* = resourcet_1023410596
else:
  static :
    hint("Declaration of " & "coap_resource_t" &
        " already exists, not redeclaring")
when not declared(loghandlert):
  type
    loghandlert* = loghandlert_1023410519
else:
  static :
    hint("Declaration of " & "coap_log_handler_t" &
        " already exists, not redeclaring")
when not declared(dtlspkit):
  type
    dtlspkit* = dtlspkit_1023410662
else:
  static :
    hint("Declaration of " & "coap_dtls_pki_t" &
        " already exists, not redeclaring")
when not declared(optlistt):
  type
    optlistt* = optlistt_1023410664
else:
  static :
    hint("Declaration of " & "coap_optlist_t" &
        " already exists, not redeclaring")
when not declared(timettypedef):
  type
    timettypedef* = timettypedef_1023410736
else:
  static :
    hint("Declaration of " & "time_t" & " already exists, not redeclaring")
when not declared(structstringt):
  type
    structstringt* = structstringt_1023410738
else:
  static :
    hint("Declaration of " & "struct_coap_string_t" &
        " already exists, not redeclaring")
when not declared(responset):
  type
    responset* = responset_1023410521
else:
  static :
    hint("Declaration of " & "coap_response_t" &
        " already exists, not redeclaring")
when not declared(cacheentryt):
  type
    cacheentryt* = cacheentryt_1023410666
else:
  static :
    hint("Declaration of " & "coap_cache_entry_t" &
        " already exists, not redeclaring")
when not declared(addrtuplet):
  type
    addrtuplet* = addrtuplet_1023410523
else:
  static :
    hint("Declaration of " & "coap_addr_tuple_t" &
        " already exists, not redeclaring")
when not declared(contextt):
  type
    contextt* = contextt_1023410525
else:
  static :
    hint("Declaration of " & "coap_context_t" &
        " already exists, not redeclaring")
when not declared(pdusignalingprotot):
  type
    pdusignalingprotot* = pdusignalingprotot_1023410600
else:
  static :
    hint("Declaration of " & "coap_pdu_signaling_proto_t" &
        " already exists, not redeclaring")
when not declared(urischemet):
  type
    urischemet* = urischemet_1023410602
else:
  static :
    hint("Declaration of " & "coap_uri_scheme_t" &
        " already exists, not redeclaring")
when not declared(resourcereleaseuserdatahandlert):
  type
    resourcereleaseuserdatahandlert* = resourcereleaseuserdatahandlert_1023410604
else:
  static :
    hint("Declaration of " & "coap_resource_release_userdata_handler_t" &
        " already exists, not redeclaring")
when not declared(option):
  type
    option* = option_1023410740
else:
  static :
    hint("Declaration of " & "coap_option" & " already exists, not redeclaring")
when not declared(responsehandlert):
  type
    responsehandlert* = responsehandlert_1023410668
else:
  static :
    hint("Declaration of " & "coap_response_handler_t" &
        " already exists, not redeclaring")
when not declared(compilertimet):
  type
    compilertimet* = compilertimet_1023410606
else:
  static :
    hint("Declaration of " & "__time_t" & " already exists, not redeclaring")
when not declared(tickdifft):
  type
    tickdifft* = tickdifft_1023410742
else:
  static :
    hint("Declaration of " & "coap_tick_diff_t" &
        " already exists, not redeclaring")
when not declared(socklent):
  type
    socklent* = socklent_1023410744
else:
  static :
    hint("Declaration of " & "socklen_t" & " already exists, not redeclaring")
when not declared(tlsversiont):
  type
    tlsversiont* = tlsversiont_1023410529
else:
  static :
    hint("Declaration of " & "coap_tls_version_t" &
        " already exists, not redeclaring")
when not declared(optiont):
  type
    optiont* = optiont_1023410608
else:
  static :
    hint("Declaration of " & "coap_option_t" &
        " already exists, not redeclaring")
when not declared(midt):
  type
    midt* = midt_1023410531
else:
  static :
    hint("Declaration of " & "coap_mid_t" & " already exists, not redeclaring")
when not declared(sessionstatet):
  type
    sessionstatet* = sessionstatet_1023410746
else:
  static :
    hint("Declaration of " & "coap_session_state_t" &
        " already exists, not redeclaring")
when not declared(structin6addr):
  type
    structin6addr* = structin6addr_1023410533
else:
  static :
    hint("Declaration of " & "struct_in6_addr" &
        " already exists, not redeclaring")
when not declared(attrt):
  type
    attrt* = attrt_1023410672
else:
  static :
    hint("Declaration of " & "coap_attr_t" & " already exists, not redeclaring")
when not declared(asynct):
  type
    asynct* = asynct_1023410610
else:
  static :
    hint("Declaration of " & "coap_async_t" & " already exists, not redeclaring")
when not declared(addresst):
  type
    addresst* = addresst_1023410674
else:
  static :
    hint("Declaration of " & "coap_address_t" &
        " already exists, not redeclaring")
when not declared(pkikeypemt):
  type
    pkikeypemt* = pkikeypemt_1023410748
else:
  static :
    hint("Declaration of " & "coap_pki_key_pem_t" &
        " already exists, not redeclaring")
when not declared(dtlsrolet):
  type
    dtlsrolet* = dtlsrolet_1023410676
else:
  static :
    hint("Declaration of " & "coap_dtls_role_t" &
        " already exists, not redeclaring")
when not declared(fixedpointt):
  type
    fixedpointt* = fixedpointt_1023410678
else:
  static :
    hint("Declaration of " & "coap_fixed_point_t" &
        " already exists, not redeclaring")
when not declared(structpkikeypemt):
  type
    structpkikeypemt* = structpkikeypemt_1023410680
else:
  static :
    hint("Declaration of " & "struct_coap_pki_key_pem_t" &
        " already exists, not redeclaring")
when not declared(dtlsidcallbackt):
  type
    dtlsidcallbackt* = dtlsidcallbackt_1023410612
else:
  static :
    hint("Declaration of " & "coap_dtls_id_callback_t" &
        " already exists, not redeclaring")
when not declared(queuet):
  type
    queuet* = queuet_1023410750
else:
  static :
    hint("Declaration of " & "coap_queue_t" & " already exists, not redeclaring")
when not declared(eventhandlert):
  type
    eventhandlert* = eventhandlert_1023410752
else:
  static :
    hint("Declaration of " & "coap_event_handler_t" &
        " already exists, not redeclaring")
when not declared(strconstt):
  type
    strconstt* = strconstt_1023410535
else:
  static :
    hint("Declaration of " & "coap_str_const_t" &
        " already exists, not redeclaring")
when not declared(optionnumt):
  type
    optionnumt* = optionnumt_1023410539
else:
  static :
    hint("Declaration of " & "coap_option_num_t" &
        " already exists, not redeclaring")
when not declared(protot):
  type
    protot* = protot_1023410541
else:
  static :
    hint("Declaration of " & "coap_proto_t" & " already exists, not redeclaring")
when not declared(structfixedpointt):
  type
    structfixedpointt* = structfixedpointt_1023410543
else:
  static :
    hint("Declaration of " & "struct_coap_fixed_point_t" &
        " already exists, not redeclaring")
when not declared(structoptlistt):
  type
    structoptlistt* = structoptlistt_1023410616
else:
  static :
    hint("Declaration of " & "struct_coap_optlist_t" &
        " already exists, not redeclaring")
when not declared(pdut):
  type
    pdut* = pdut_1023410618
else:
  static :
    hint("Declaration of " & "coap_pdu_t" & " already exists, not redeclaring")
when not declared(randfunct):
  type
    randfunct* = randfunct_1023410624
else:
  static :
    hint("Declaration of " & "coap_rand_func_t" &
        " already exists, not redeclaring")
when not declared(ponghandlert):
  type
    ponghandlert* = ponghandlert_1023410622
else:
  static :
    hint("Declaration of " & "coap_pong_handler_t" &
        " already exists, not redeclaring")
when not declared(dtlssecuritysetupt):
  type
    dtlssecuritysetupt* = dtlssecuritysetupt_1023410545
else:
  static :
    hint("Declaration of " & "coap_dtls_security_setup_t" &
        " already exists, not redeclaring")
when not declared(compilersocklent):
  type
    compilersocklent* = compilersocklent_1023410682
else:
  static :
    hint("Declaration of " & "__socklen_t" & " already exists, not redeclaring")
when not declared(binaryt):
  type
    binaryt* = binaryt_1023410756
else:
  static :
    hint("Declaration of " & "coap_binary_t" &
        " already exists, not redeclaring")
when not declared(structaddrtuplet):
  type
    structaddrtuplet* = structaddrtuplet_1023410758
else:
  static :
    hint("Declaration of " & "struct_coap_addr_tuple_t" &
        " already exists, not redeclaring")
when not declared(tickt):
  type
    tickt* = tickt_1023410684
else:
  static :
    hint("Declaration of " & "coap_tick_t" & " already exists, not redeclaring")
when not declared(subscriptiont):
  type
    subscriptiont* = subscriptiont_1023410760
else:
  static :
    hint("Declaration of " & "coap_subscription_t" &
        " already exists, not redeclaring")
when not declared(pdutypet):
  type
    pdutypet* = pdutypet_1023410547
else:
  static :
    hint("Declaration of " & "coap_pdu_type_t" &
        " already exists, not redeclaring")
when not declared(fdt):
  type
    fdt* = fdt_1023410686
else:
  static :
    hint("Declaration of " & "coap_fd_t" & " already exists, not redeclaring")
when not declared(inaddrt):
  type
    inaddrt* = inaddrt_1023410762
else:
  static :
    hint("Declaration of " & "in_addr_t" & " already exists, not redeclaring")
when not declared(dtlscpskt):
  type
    dtlscpskt* = dtlscpskt_1023410549
else:
  static :
    hint("Declaration of " & "coap_dtls_cpsk_t" &
        " already exists, not redeclaring")
when not declared(asn1privatekeytypet):
  type
    asn1privatekeytypet* = asn1privatekeytypet_1023410551
else:
  static :
    hint("Declaration of " & "coap_asn1_privatekey_type_t" &
        " already exists, not redeclaring")
when not declared(pkikeypkcs11t):
  type
    pkikeypkcs11t* = pkikeypkcs11t_1023410688
else:
  static :
    hint("Declaration of " & "coap_pki_key_pkcs11_t" &
        " already exists, not redeclaring")
when not declared(structdtlsspskinfot):
  type
    structdtlsspskinfot* = structdtlsspskinfot_1023410764
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_spsk_info_t" &
        " already exists, not redeclaring")
when not declared(sessiont):
  type
    sessiont* = sessiont_1023410553
else:
  static :
    hint("Declaration of " & "coap_session_t" &
        " already exists, not redeclaring")
when not declared(cacherecordpdut):
  type
    cacherecordpdut* = cacherecordpdut_1023410766
else:
  static :
    hint("Declaration of " & "coap_cache_record_pdu_t" &
        " already exists, not redeclaring")
when not declared(lgsrcvt):
  type
    lgsrcvt* = lgsrcvt_1023410690
else:
  static :
    hint("Declaration of " & "coap_lg_srcv_t" &
        " already exists, not redeclaring")
when not declared(cachesessionbasedt):
  type
    cachesessionbasedt* = cachesessionbasedt_1023410768
else:
  static :
    hint("Declaration of " & "coap_cache_session_based_t" &
        " already exists, not redeclaring")
when not declared(inportt):
  type
    inportt* = inportt_1023410692
else:
  static :
    hint("Declaration of " & "in_port_t" & " already exists, not redeclaring")
when not declared(urit):
  type
    urit* = urit_1023410626
else:
  static :
    hint("Declaration of " & "coap_uri_t" & " already exists, not redeclaring")
when not declared(lgxmitt):
  type
    lgxmitt* = lgxmitt_1023410628
else:
  static :
    hint("Declaration of " & "coap_lg_xmit_t" &
        " already exists, not redeclaring")
when not declared(sessiontypet):
  type
    sessiontypet* = sessiontypet_1023410694
else:
  static :
    hint("Declaration of " & "coap_session_type_t" &
        " already exists, not redeclaring")
when not declared(dtlscncallbackt):
  type
    dtlscncallbackt* = dtlscncallbackt_1023410772
else:
  static :
    hint("Declaration of " & "coap_dtls_cn_callback_t" &
        " already exists, not redeclaring")
when not declared(sockett):
  type
    sockett* = sockett_1023410696
else:
  static :
    hint("Declaration of " & "coap_socket_t" &
        " already exists, not redeclaring")
when not declared(dtlsspskinfot):
  type
    dtlsspskinfot* = dtlsspskinfot_1023410555
else:
  static :
    hint("Declaration of " & "coap_dtls_spsk_info_t" &
        " already exists, not redeclaring")
when not declared(timet):
  type
    timet* = timet_1023410630
else:
  static :
    hint("Declaration of " & "coap_time_t" & " already exists, not redeclaring")
when not declared(structbinaryt):
  type
    structbinaryt* = structbinaryt_1023410632
else:
  static :
    hint("Declaration of " & "struct_coap_binary_t" &
        " already exists, not redeclaring")
when not declared(optiteratort):
  type
    optiteratort* = optiteratort_1023410698
else:
  static :
    hint("Declaration of " & "coap_opt_iterator_t" &
        " already exists, not redeclaring")
when not declared(structtlsversiont):
  type
    structtlsversiont* = structtlsversiont_1023410774
else:
  static :
    hint("Declaration of " & "struct_coap_tls_version_t" &
        " already exists, not redeclaring")
when not declared(structstrconstt):
  type
    structstrconstt* = structstrconstt_1023410557
else:
  static :
    hint("Declaration of " & "struct_coap_str_const_t" &
        " already exists, not redeclaring")
when not declared(dtlspsksnicallbackt):
  type
    dtlspsksnicallbackt* = dtlspsksnicallbackt_1023410559
else:
  static :
    hint("Declaration of " & "coap_dtls_psk_sni_callback_t" &
        " already exists, not redeclaring")
when not declared(structoptfiltert):
  type
    structoptfiltert* = structoptfiltert_1023410700
else:
  static :
    hint("Declaration of " & "struct_coap_opt_filter_t" &
        " already exists, not redeclaring")
when not declared(packett):
  type
    packett* = packett_1023410634
else:
  static :
    hint("Declaration of " & "coap_packet_t" &
        " already exists, not redeclaring")
when not declared(structdtlsspskt):
  type
    structdtlsspskt* = structdtlsspskt_1023410636
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_spsk_t" &
        " already exists, not redeclaring")
when not declared(endpointt):
  type
    endpointt* = endpointt_1023410702
else:
  static :
    hint("Declaration of " & "coap_endpoint_t" &
        " already exists, not redeclaring")
when not declared(printstatust):
  type
    printstatust* = printstatust_1023410704
else:
  static :
    hint("Declaration of " & "coap_print_status_t" &
        " already exists, not redeclaring")
when not declared(dtlsihcallbackt):
  type
    dtlsihcallbackt* = dtlsihcallbackt_1023410561
else:
  static :
    hint("Declaration of " & "coap_dtls_ih_callback_t" &
        " already exists, not redeclaring")
when not declared(addrhasht):
  type
    addrhasht* = addrhasht_1023410776
else:
  static :
    hint("Declaration of " & "coap_addr_hash_t" &
        " already exists, not redeclaring")
when not declared(eventt):
  type
    eventt* = eventt_1023410563
else:
  static :
    hint("Declaration of " & "coap_event_t" & " already exists, not redeclaring")
when not declared(structdtlscpskinfot):
  type
    structdtlscpskinfot* = structdtlscpskinfot_1023410565
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_cpsk_info_t" &
        " already exists, not redeclaring")
when not declared(dtlsspskt):
  type
    dtlsspskt* = dtlsspskt_1023410778
else:
  static :
    hint("Declaration of " & "coap_dtls_spsk_t" &
        " already exists, not redeclaring")
when not declared(pkikeyasn1t):
  type
    pkikeyasn1t* = pkikeyasn1t_1023410638
else:
  static :
    hint("Declaration of " & "coap_pki_key_asn1_t" &
        " already exists, not redeclaring")
when not declared(pinghandlert):
  type
    pinghandlert* = pinghandlert_1023410640
else:
  static :
    hint("Declaration of " & "coap_ping_handler_t" &
        " already exists, not redeclaring")
when not declared(lgcrcvt):
  type
    lgcrcvt* = lgcrcvt_1023410567
else:
  static :
    hint("Declaration of " & "coap_lg_crcv_t" &
        " already exists, not redeclaring")
when not declared(optt):
  type
    optt* = optt_1023410569
else:
  static :
    hint("Declaration of " & "coap_opt_t" & " already exists, not redeclaring")
when not declared(safamilyt):
  type
    safamilyt* = safamilyt_1023410571
else:
  static :
    hint("Declaration of " & "sa_family_t" & " already exists, not redeclaring")
when not declared(pkikeypembuft):
  type
    pkikeypembuft* = pkikeypembuft_1023410573
else:
  static :
    hint("Declaration of " & "coap_pki_key_pem_buf_t" &
        " already exists, not redeclaring")
when not declared(structdtlspkit):
  type
    structdtlspkit* = structdtlspkit_1023410575
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_pki_t" &
        " already exists, not redeclaring")
when not declared(dtlscpskinfot):
  type
    dtlscpskinfot* = dtlscpskinfot_1023410714
else:
  static :
    hint("Declaration of " & "coap_dtls_cpsk_info_t" &
        " already exists, not redeclaring")
when not declared(structpkikeypkcs11t):
  type
    structpkikeypkcs11t* = structpkikeypkcs11t_1023410716
else:
  static :
    hint("Declaration of " & "struct_coap_pki_key_pkcs11_t" &
        " already exists, not redeclaring")
when not declared(methodhandlert):
  type
    methodhandlert* = methodhandlert_1023410577
else:
  static :
    hint("Declaration of " & "coap_method_handler_t" &
        " already exists, not redeclaring")
when not declared(structbinconstt):
  type
    structbinconstt* = structbinconstt_1023410782
else:
  static :
    hint("Declaration of " & "struct_coap_bin_const_t" &
        " already exists, not redeclaring")
when not declared(structdtlscpskt):
  type
    structdtlscpskt* = structdtlscpskt_1023410784
else:
  static :
    hint("Declaration of " & "struct_coap_dtls_cpsk_t" &
        " already exists, not redeclaring")
when not declared(tlslibraryt):
  type
    tlslibraryt* = tlslibraryt_1023410642
else:
  static :
    hint("Declaration of " & "coap_tls_library_t" &
        " already exists, not redeclaring")
when not declared(contextsetsessiontimeout):
  proc contextsetsessiontimeout*(context: ptr contextt_1023410526;
                                 sessiontimeout: cuint): void {.cdecl,
      importc: "coap_context_set_session_timeout".}
else:
  static :
    hint("Declaration of " & "coap_context_set_session_timeout" &
        " already exists, not redeclaring")
when not declared(deletestring):
  proc deletestring*(string: ptr stringt_1023410593): void {.cdecl,
      importc: "coap_delete_string".}
else:
  static :
    hint("Declaration of " & "coap_delete_string" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosesign1):
  when 18 is static:
    const
      Coapmediatypeapplicationcosesign1* = 18 ## Generated based on /usr/include/coap3/pdu.h:201:9
  else:
    let Coapmediatypeapplicationcosesign1* = 18 ## Generated based on /usr/include/coap3/pdu.h:201:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_SIGN1" &
        " already exists, not redeclaring")
when not declared(cachederivekey):
  proc cachederivekey*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619;
                       sessionbased: cachesessionbasedt_1023410769): ptr cachekeyt_1023410645 {.
      cdecl, importc: "coap_cache_derive_key".}
else:
  static :
    hint("Declaration of " & "coap_cache_derive_key" &
        " already exists, not redeclaring")
when not declared(addtoken):
  proc addtoken*(pdu: ptr pdut_1023410619; len: csize_t; data: ptr uint8): cint {.
      cdecl, importc: "coap_add_token".}
else:
  static :
    hint("Declaration of " & "coap_add_token" &
        " already exists, not redeclaring")
when not declared(newuri):
  proc newuri*(uri: ptr uint8; length: cuint): ptr urit_1023410627 {.cdecl,
      importc: "coap_new_uri".}
else:
  static :
    hint("Declaration of " & "coap_new_uri" & " already exists, not redeclaring")
when not declared(sessionmaxpdusize):
  proc sessionmaxpdusize*(session: ptr sessiont_1023410554): csize_t {.cdecl,
      importc: "coap_session_max_pdu_size".}
else:
  static :
    hint("Declaration of " & "coap_session_max_pdu_size" &
        " already exists, not redeclaring")
when not declared(tcpissupported):
  proc tcpissupported*(): cint {.cdecl, importc: "coap_tcp_is_supported".}
else:
  static :
    hint("Declaration of " & "coap_tcp_is_supported" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcwt):
  when 61 is static:
    const
      Coapmediatypeapplicationcwt* = 61 ## Generated based on /usr/include/coap3/pdu.h:197:9
  else:
    let Coapmediatypeapplicationcwt* = 61 ## Generated based on /usr/include/coap3/pdu.h:197:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_CWT" &
        " already exists, not redeclaring")
when not declared(addoption):
  proc addoption*(pdu: ptr pdut_1023410619; number: optionnumt_1023410540;
                  len: csize_t; data: ptr uint8): csize_t {.cdecl,
      importc: "coap_add_option".}
else:
  static :
    hint("Declaration of " & "coap_add_option" &
        " already exists, not redeclaring")
when not declared(Coapoptionmaxage):
  when 14 is static:
    const
      Coapoptionmaxage* = 14 ## Generated based on /usr/include/coap3/pdu.h:119:9
  else:
    let Coapoptionmaxage* = 14 ## Generated based on /usr/include/coap3/pdu.h:119:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_MAXAGE" &
        " already exists, not redeclaring")
when not declared(Coapobserveestablish):
  when 0 is static:
    const
      Coapobserveestablish* = 0 ## Generated based on /usr/include/coap3/subscribe.h:32:9
  else:
    let Coapobserveestablish* = 0 ## Generated based on /usr/include/coap3/subscribe.h:32:9
else:
  static :
    hint("Declaration of " & "COAP_OBSERVE_ESTABLISH" &
        " already exists, not redeclaring")
when not declared(Coapoptfilterlong):
  when 2 is static:
    const
      Coapoptfilterlong* = 2 ## Generated based on /usr/include/coap3/option.h:85:9
  else:
    let Coapoptfilterlong* = 2 ## Generated based on /usr/include/coap3/option.h:85:9
else:
  static :
    hint("Declaration of " & "COAP_OPT_FILTER_LONG" &
        " already exists, not redeclaring")
when not declared(Coapeventsessionclosed):
  when 8194 is static:
    const
      Coapeventsessionclosed* = 8194 ## Generated based on /usr/include/coap3/coap_event.h:48:9
  else:
    let Coapeventsessionclosed* = 8194 ## Generated based on /usr/include/coap3/coap_event.h:48:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_SESSION_CLOSED" &
        " already exists, not redeclaring")
when not declared(Coapeventsessionconnected):
  when 8193 is static:
    const
      Coapeventsessionconnected* = 8193 ## Generated based on /usr/include/coap3/coap_event.h:47:9
  else:
    let Coapeventsessionconnected* = 8193 ## Generated based on /usr/include/coap3/coap_event.h:47:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_SESSION_CONNECTED" &
        " already exists, not redeclaring")
when not declared(Coapoptionnoresponse):
  when 258 is static:
    const
      Coapoptionnoresponse* = 258 ## Generated based on /usr/include/coap3/pdu.h:130:9
  else:
    let Coapoptionnoresponse* = 258 ## Generated based on /usr/include/coap3/pdu.h:130:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_NORESPONSE" &
        " already exists, not redeclaring")
when not declared(newoptlist):
  proc newoptlist*(number: uint16; length: csize_t; data: ptr uint8): ptr optlistt_1023410665 {.
      cdecl, importc: "coap_new_optlist".}
else:
  static :
    hint("Declaration of " & "coap_new_optlist" &
        " already exists, not redeclaring")
when not declared(optionfilterset):
  proc optionfilterset*(filter: ptr optfiltert_1023410595; number: optionnumt_1023410540): cint {.
      cdecl, importc: "coap_option_filter_set".}
else:
  static :
    hint("Declaration of " & "coap_option_filter_set" &
        " already exists, not redeclaring")
when not declared(sessiongetproto):
  proc sessiongetproto*(session: ptr sessiont_1023410554): protot_1023410542 {.
      cdecl, importc: "coap_session_get_proto".}
else:
  static :
    hint("Declaration of " & "coap_session_get_proto" &
        " already exists, not redeclaring")
when not declared(sessiongettype):
  proc sessiongettype*(session: ptr sessiont_1023410554): sessiontypet_1023410695 {.
      cdecl, importc: "coap_session_get_type".}
else:
  static :
    hint("Declaration of " & "coap_session_get_type" &
        " already exists, not redeclaring")
when not declared(resourceinit):
  proc resourceinit*(uripath: ptr strconstt_1023410536; flags: cint): ptr resourcet_1023410597 {.
      cdecl, importc: "coap_resource_init".}
else:
  static :
    hint("Declaration of " & "coap_resource_init" &
        " already exists, not redeclaring")
when not declared(pdusettype):
  proc pdusettype*(pdu: ptr pdut_1023410619; typearg: pdutypet_1023410548): void {.
      cdecl, importc: "coap_pdu_set_type".}
else:
  static :
    hint("Declaration of " & "coap_pdu_set_type" &
        " already exists, not redeclaring")
when not declared(addattr):
  proc addattr*(resource: ptr resourcet_1023410597; name: ptr strconstt_1023410536;
                value: ptr strconstt_1023410536; flags: cint): ptr attrt_1023410673 {.
      cdecl, importc: "coap_add_attr".}
else:
  static :
    hint("Declaration of " & "coap_add_attr" &
        " already exists, not redeclaring")
when not declared(senderror):
  proc senderror*(session: ptr sessiont_1023410554; request: ptr pdut_1023410619;
                  code: pducodet_1023410727; opts: ptr optfiltert_1023410595): midt_1023410532 {.
      cdecl, importc: "coap_send_error".}
else:
  static :
    hint("Declaration of " & "coap_send_error" &
        " already exists, not redeclaring")
when not declared(deleteresource):
  proc deleteresource*(context: ptr contextt_1023410526; resource: ptr resourcet_1023410597): cint {.
      cdecl, importc: "coap_delete_resource".}
else:
  static :
    hint("Declaration of " & "coap_delete_resource" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationdotscbor):
  when 271 is static:
    const
      Coapmediatypeapplicationdotscbor* = 271 ## Generated based on /usr/include/coap3/pdu.h:221:9
  else:
    let Coapmediatypeapplicationdotscbor* = 271 ## Generated based on /usr/include/coap3/pdu.h:221:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_DOTS_CBOR" &
        " already exists, not redeclaring")
when not declared(sessionsetmtu):
  proc sessionsetmtu*(session: ptr sessiont_1023410554; mtu: cuint): void {.
      cdecl, importc: "coap_session_set_mtu".}
else:
  static :
    hint("Declaration of " & "coap_session_set_mtu" &
        " already exists, not redeclaring")
when not declared(Coapblocksinglebody):
  when 2 is static:
    const
      Coapblocksinglebody* = 2 ## Generated based on /usr/include/coap3/block.h:42:9
  else:
    let Coapblocksinglebody* = 2 ## Generated based on /usr/include/coap3/block.h:42:9
else:
  static :
    hint("Declaration of " & "COAP_BLOCK_SINGLE_BODY" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationxml):
  when 41 is static:
    const
      Coapmediatypeapplicationxml* = 41 ## Generated based on /usr/include/coap3/pdu.h:191:9
  else:
    let Coapmediatypeapplicationxml* = 41 ## Generated based on /usr/include/coap3/pdu.h:191:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_XML" &
        " already exists, not redeclaring")
when not declared(cachederivekeywignore):
  proc cachederivekeywignore*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619;
                              sessionbased: cachesessionbasedt_1023410769;
                              ignoreoptions: ptr uint16; ignorecount: csize_t): ptr cachekeyt_1023410645 {.
      cdecl, importc: "coap_cache_derive_key_w_ignore".}
else:
  static :
    hint("Declaration of " & "coap_cache_derive_key_w_ignore" &
        " already exists, not redeclaring")
when not declared(deletecacheentry):
  proc deletecacheentry*(context: ptr contextt_1023410526;
                         cacheentry: ptr cacheentryt_1023410667): void {.cdecl,
      importc: "coap_delete_cache_entry".}
else:
  static :
    hint("Declaration of " & "coap_delete_cache_entry" &
        " already exists, not redeclaring")
when not declared(contextsetmaxhandshakesessions):
  proc contextsetmaxhandshakesessions*(context: ptr contextt_1023410526;
                                       maxhandshakesessions: cuint): void {.
      cdecl, importc: "coap_context_set_max_handshake_sessions".}
else:
  static :
    hint("Declaration of " & "coap_context_set_max_handshake_sessions" &
        " already exists, not redeclaring")
when not declared(resourcesetgetobservable):
  proc resourcesetgetobservable*(resource: ptr resourcet_1023410597; mode: cint): void {.
      cdecl, importc: "coap_resource_set_get_observable".}
else:
  static :
    hint("Declaration of " & "coap_resource_set_get_observable" &
        " already exists, not redeclaring")
when not declared(Coapoptionproxyscheme):
  when 39 is static:
    const
      Coapoptionproxyscheme* = 39 ## Generated based on /usr/include/coap3/pdu.h:128:9
  else:
    let Coapoptionproxyscheme* = 39 ## Generated based on /usr/include/coap3/pdu.h:128:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_PROXY_SCHEME" &
        " already exists, not redeclaring")
when not declared(checkoption):
  proc checkoption*(pdu: ptr pdut_1023410619; number: optionnumt_1023410540;
                    oi: ptr optiteratort_1023410699): ptr optt_1023410570 {.
      cdecl, importc: "coap_check_option".}
else:
  static :
    hint("Declaration of " & "coap_check_option" &
        " already exists, not redeclaring")
when not declared(Coapoptionurihost):
  when 3 is static:
    const
      Coapoptionurihost* = 3 ## Generated based on /usr/include/coap3/pdu.h:108:9
  else:
    let Coapoptionurihost* = 3 ## Generated based on /usr/include/coap3/pdu.h:108:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_URI_HOST" &
        " already exists, not redeclaring")
when not declared(Coapprintstatusmask):
  when cast[cuint](4026531840'i64) is static:
    const
      Coapprintstatusmask* = cast[cuint](4026531840'i64) ## Generated based on /usr/include/coap3/resource.h:326:9
  else:
    let Coapprintstatusmask* = cast[cuint](4026531840'i64) ## Generated based on /usr/include/coap3/resource.h:326:9
else:
  static :
    hint("Declaration of " & "COAP_PRINT_STATUS_MASK" &
        " already exists, not redeclaring")
when not declared(cachegetbykey):
  proc cachegetbykey*(context: ptr contextt_1023410526; cachekey: ptr cachekeyt_1023410645): ptr cacheentryt_1023410667 {.
      cdecl, importc: "coap_cache_get_by_key".}
else:
  static :
    hint("Declaration of " & "coap_cache_get_by_key" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptionmaxmessagesize):
  when 2 is static:
    const
      Coapsignalingoptionmaxmessagesize* = 2 ## Generated based on /usr/include/coap3/pdu.h:177:9
  else:
    let Coapsignalingoptionmaxmessagesize* = 2 ## Generated based on /usr/include/coap3/pdu.h:177:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_MAX_MESSAGE_SIZE" &
        " already exists, not redeclaring")
when not declared(sessionsetappdata):
  proc sessionsetappdata*(session: ptr sessiont_1023410554; data: pointer): void {.
      cdecl, importc: "coap_session_set_app_data".}
else:
  static :
    hint("Declaration of " & "coap_session_set_app_data" &
        " already exists, not redeclaring")
when not declared(getquery):
  proc getquery*(request: ptr pdut_1023410619): ptr stringt_1023410593 {.cdecl,
      importc: "coap_get_query".}
else:
  static :
    hint("Declaration of " & "coap_get_query" &
        " already exists, not redeclaring")
when not declared(dtlssetloglevel):
  proc dtlssetloglevel*(level: cint): void {.cdecl,
      importc: "coap_dtls_set_log_level".}
else:
  static :
    hint("Declaration of " & "coap_dtls_set_log_level" &
        " already exists, not redeclaring")
when not declared(addoptlistpdu):
  proc addoptlistpdu*(pdu: ptr pdut_1023410619; optlistchain: ptr ptr optlistt_1023410665): cint {.
      cdecl, importc: "coap_add_optlist_pdu".}
else:
  static :
    hint("Declaration of " & "coap_add_optlist_pdu" &
        " already exists, not redeclaring")
when not declared(contextsetpkirootcas):
  proc contextsetpkirootcas*(context: ptr contextt_1023410526; cafile: cstring;
                             cadir: cstring): cint {.cdecl,
      importc: "coap_context_set_pki_root_cas".}
else:
  static :
    hint("Declaration of " & "coap_context_set_pki_root_cas" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosesign):
  when 98 is static:
    const
      Coapmediatypeapplicationcosesign* = 98 ## Generated based on /usr/include/coap3/pdu.h:200:9
  else:
    let Coapmediatypeapplicationcosesign* = 98 ## Generated based on /usr/include/coap3/pdu.h:200:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_SIGN" &
        " already exists, not redeclaring")
when not declared(cachegetpdu):
  proc cachegetpdu*(cacheentry: ptr cacheentryt_1023410667): ptr pdut_1023410619 {.
      cdecl, importc: "coap_cache_get_pdu".}
else:
  static :
    hint("Declaration of " & "coap_cache_get_pdu" &
        " already exists, not redeclaring")
when not declared(Coapeventdtlsrenegotiate):
  when 479 is static:
    const
      Coapeventdtlsrenegotiate* = 479 ## Generated based on /usr/include/coap3/coap_event.h:34:9
  else:
    let Coapeventdtlsrenegotiate* = 479 ## Generated based on /usr/include/coap3/coap_event.h:34:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_DTLS_RENEGOTIATE" &
        " already exists, not redeclaring")
when not declared(Coapattrflagsreleasevalue):
  when 2 is static:
    const
      Coapattrflagsreleasevalue* = 2 ## Generated based on /usr/include/coap3/resource.h:49:9
  else:
    let Coapattrflagsreleasevalue* = 2 ## Generated based on /usr/include/coap3/resource.h:49:9
else:
  static :
    hint("Declaration of " & "COAP_ATTR_FLAGS_RELEASE_VALUE" &
        " already exists, not redeclaring")
when not declared(iodoio):
  proc iodoio*(ctx: ptr contextt_1023410526; now: tickt_1023410685): void {.
      cdecl, importc: "coap_io_do_io".}
else:
  static :
    hint("Declaration of " & "coap_io_do_io" &
        " already exists, not redeclaring")
when not declared(flsll):
  proc flsll*(i: clonglong): cint {.cdecl, importc: "coap_flsll".}
else:
  static :
    hint("Declaration of " & "coap_flsll" & " already exists, not redeclaring")
when not declared(joinmcastgroupintf):
  proc joinmcastgroupintf*(ctx: ptr contextt_1023410526; groupname: cstring;
                           ifname: cstring): cint {.cdecl,
      importc: "coap_join_mcast_group_intf".}
else:
  static :
    hint("Declaration of " & "coap_join_mcast_group_intf" &
        " already exists, not redeclaring")
when not declared(splituri):
  proc splituri*(strvar: ptr uint8; len: csize_t; uri: ptr urit_1023410627): cint {.
      cdecl, importc: "coap_split_uri".}
else:
  static :
    hint("Declaration of " & "coap_split_uri" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsensmljson):
  when 111 is static:
    const
      Coapmediatypeapplicationsensmljson* = 111 ## Generated based on /usr/include/coap3/pdu.h:212:9
  else:
    let Coapmediatypeapplicationsensmljson* = 111 ## Generated based on /usr/include/coap3/pdu.h:212:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENSML_JSON" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcbor):
  when 60 is static:
    const
      Coapmediatypeapplicationcbor* = 60 ## Generated based on /usr/include/coap3/pdu.h:196:9
  else:
    let Coapmediatypeapplicationcbor* = 60 ## Generated based on /usr/include/coap3/pdu.h:196:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_CBOR" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsensmlcbor):
  when 113 is static:
    const
      Coapmediatypeapplicationsensmlcbor* = 113 ## Generated based on /usr/include/coap3/pdu.h:214:9
  else:
    let Coapmediatypeapplicationsensmlcbor* = 113 ## Generated based on /usr/include/coap3/pdu.h:214:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENSML_CBOR" &
        " already exists, not redeclaring")
when not declared(sessiongetaddrlocal):
  proc sessiongetaddrlocal*(session: ptr sessiont_1023410554): ptr addresst_1023410675 {.
      cdecl, importc: "coap_session_get_addr_local".}
else:
  static :
    hint("Declaration of " & "coap_session_get_addr_local" &
        " already exists, not redeclaring")
when not declared(Coapdefaultmtu):
  when 1152 is static:
    const
      Coapdefaultmtu* = 1152 ## Generated based on /usr/include/coap3/pdu.h:39:9
  else:
    let Coapdefaultmtu* = 1152 ## Generated based on /usr/include/coap3/pdu.h:39:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_MTU" &
        " already exists, not redeclaring")
when not declared(ioprocess):
  proc ioprocess*(ctx: ptr contextt_1023410526; timeoutms: uint32): cint {.
      cdecl, importc: "coap_io_process".}
else:
  static :
    hint("Declaration of " & "coap_io_process" &
        " already exists, not redeclaring")
when not declared(optioniteratorinit):
  proc optioniteratorinit*(pdu: ptr pdut_1023410619; oi: ptr optiteratort_1023410699;
                           filter: ptr optfiltert_1023410595): ptr optiteratort_1023410699 {.
      cdecl, importc: "coap_option_iterator_init".}
else:
  static :
    hint("Declaration of " & "coap_option_iterator_init" &
        " already exists, not redeclaring")
when not declared(getloglevel):
  proc getloglevel*(): logt_1023410781 {.cdecl, importc: "coap_get_log_level".}
else:
  static :
    hint("Declaration of " & "coap_get_log_level" &
        " already exists, not redeclaring")
when not declared(Coapoptionaccept):
  when 17 is static:
    const
      Coapoptionaccept* = 17 ## Generated based on /usr/include/coap3/pdu.h:122:9
  else:
    let Coapoptionaccept* = 17 ## Generated based on /usr/include/coap3/pdu.h:122:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_ACCEPT" &
        " already exists, not redeclaring")
when not declared(ticks):
  proc ticks*(a0: ptr tickt_1023410685): void {.cdecl, importc: "coap_ticks".}
else:
  static :
    hint("Declaration of " & "coap_ticks" & " already exists, not redeclaring")
when not declared(newbinconst):
  proc newbinconst*(data: ptr uint8; size: csize_t): ptr binconstt_1023410723 {.
      cdecl, importc: "coap_new_bin_const".}
else:
  static :
    hint("Declaration of " & "coap_new_bin_const" &
        " already exists, not redeclaring")
when not declared(Coapoptionoscore):
  when 9 is static:
    const
      Coapoptionoscore* = 9  ## Generated based on /usr/include/coap3/pdu.h:114:9
  else:
    let Coapoptionoscore* = 9 ## Generated based on /usr/include/coap3/pdu.h:114:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_OSCORE" &
        " already exists, not redeclaring")
when not declared(Coapprintstatuserror):
  when cast[cuint](2147483648'i64) is static:
    const
      Coapprintstatuserror* = cast[cuint](2147483648'i64) ## Generated based on /usr/include/coap3/resource.h:328:9
  else:
    let Coapprintstatuserror* = cast[cuint](2147483648'i64) ## Generated based on /usr/include/coap3/resource.h:328:9
else:
  static :
    hint("Declaration of " & "COAP_PRINT_STATUS_ERROR" &
        " already exists, not redeclaring")
when not declared(contextsetpsk2):
  proc contextsetpsk2*(context: ptr contextt_1023410526;
                       setupdata: ptr dtlsspskt_1023410779): cint {.cdecl,
      importc: "coap_context_set_psk2".}
else:
  static :
    hint("Declaration of " & "coap_context_set_psk2" &
        " already exists, not redeclaring")
when not declared(printaddr):
  proc printaddr*(address: ptr addresst_1023410675; buffer: ptr cuchar;
                  size: csize_t): csize_t {.cdecl, importc: "coap_print_addr".}
else:
  static :
    hint("Declaration of " & "coap_print_addr" &
        " already exists, not redeclaring")
when not declared(registerasync):
  proc registerasync*(session: ptr sessiont_1023410554; request: ptr pdut_1023410619;
                      delay: tickt_1023410685): ptr asynct_1023410611 {.cdecl,
      importc: "coap_register_async".}
else:
  static :
    hint("Declaration of " & "coap_register_async" &
        " already exists, not redeclaring")
when not declared(cachegetbypdu):
  proc cachegetbypdu*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619;
                      sessionbased: cachesessionbasedt_1023410769): ptr cacheentryt_1023410667 {.
      cdecl, importc: "coap_cache_get_by_pdu".}
else:
  static :
    hint("Declaration of " & "coap_cache_get_by_pdu" &
        " already exists, not redeclaring")
when not declared(resizebinary):
  proc resizebinary*(binary: ptr binaryt_1023410757; newsize: csize_t): ptr binaryt_1023410757 {.
      cdecl, importc: "coap_resize_binary".}
else:
  static :
    hint("Declaration of " & "coap_resize_binary" &
        " already exists, not redeclaring")
when not declared(newclientsession):
  proc newclientsession*(ctx: ptr contextt_1023410526; localif: ptr addresst_1023410675;
                         server: ptr addresst_1023410675; proto: protot_1023410542): ptr sessiont_1023410554 {.
      cdecl, importc: "coap_new_client_session".}
else:
  static :
    hint("Declaration of " & "coap_new_client_session" &
        " already exists, not redeclaring")
when not declared(getappdata):
  proc getappdata*(context: ptr contextt_1023410526): pointer {.cdecl,
      importc: "coap_get_app_data".}
else:
  static :
    hint("Declaration of " & "coap_get_app_data" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationexi):
  when 47 is static:
    const
      Coapmediatypeapplicationexi* = 47 ## Generated based on /usr/include/coap3/pdu.h:194:9
  else:
    let Coapmediatypeapplicationexi* = 47 ## Generated based on /usr/include/coap3/pdu.h:194:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_EXI" &
        " already exists, not redeclaring")
when not declared(malloctype):
  proc malloctype*(typearg: memorytagt_1023410709; size: csize_t): pointer {.
      cdecl, importc: "coap_malloc_type".}
else:
  static :
    hint("Declaration of " & "coap_malloc_type" &
        " already exists, not redeclaring")
when not declared(newpdu):
  proc newpdu*(typearg: pdutypet_1023410548; code: pducodet_1023410727;
               session: ptr sessiont_1023410554): ptr pdut_1023410619 {.cdecl,
      importc: "coap_new_pdu".}
else:
  static :
    hint("Declaration of " & "coap_new_pdu" & " already exists, not redeclaring")
when not declared(endpointstr):
  proc endpointstr*(endpoint: ptr endpointt_1023410703): cstring {.cdecl,
      importc: "coap_endpoint_str".}
else:
  static :
    hint("Declaration of " & "coap_endpoint_str" &
        " already exists, not redeclaring")
when not declared(Coapdefaultnstart):
  when 1 is static:
    const
      Coapdefaultnstart* = 1 ## Generated based on /usr/include/coap3/coap_session.h:427:9
  else:
    let Coapdefaultnstart* = 1 ## Generated based on /usr/include/coap3/coap_session.h:427:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_NSTART" &
        " already exists, not redeclaring")
when not declared(sessionsetackrandomfactor):
  proc sessionsetackrandomfactor*(session: ptr sessiont_1023410554;
                                  value: fixedpointt_1023410679): void {.cdecl,
      importc: "coap_session_set_ack_random_factor".}
else:
  static :
    hint("Declaration of " & "coap_session_set_ack_random_factor" &
        " already exists, not redeclaring")
when not declared(getresourcefromuripath):
  proc getresourcefromuripath*(context: ptr contextt_1023410526;
                               uripath: ptr strconstt_1023410536): ptr resourcet_1023410597 {.
      cdecl, importc: "coap_get_resource_from_uri_path".}
else:
  static :
    hint("Declaration of " & "coap_get_resource_from_uri_path" &
        " already exists, not redeclaring")
when not declared(Coapprintstatustrunc):
  when cast[cuint](1073741824'i64) is static:
    const
      Coapprintstatustrunc* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/coap3/resource.h:329:9
  else:
    let Coapprintstatustrunc* = cast[cuint](1073741824'i64) ## Generated based on /usr/include/coap3/resource.h:329:9
else:
  static :
    hint("Declaration of " & "COAP_PRINT_STATUS_TRUNC" &
        " already exists, not redeclaring")
when not declared(sessionsetmaxretransmit):
  proc sessionsetmaxretransmit*(session: ptr sessiont_1023410554; value: cuint): void {.
      cdecl, importc: "coap_session_set_max_retransmit".}
else:
  static :
    hint("Declaration of " & "coap_session_set_max_retransmit" &
        " already exists, not redeclaring")
when not declared(contextgetmaxidlesessions):
  proc contextgetmaxidlesessions*(context: ptr contextt_1023410526): cuint {.
      cdecl, importc: "coap_context_get_max_idle_sessions".}
else:
  static :
    hint("Declaration of " & "coap_context_get_max_idle_sessions" &
        " already exists, not redeclaring")
when not declared(getdatalarge):
  proc getdatalarge*(pdu: ptr pdut_1023410619; len: ptr csize_t;
                     data: ptr ptr uint8; offset: ptr csize_t;
                     total: ptr csize_t): cint {.cdecl,
      importc: "coap_get_data_large".}
else:
  static :
    hint("Declaration of " & "coap_get_data_large" &
        " already exists, not redeclaring")
when not declared(contextsetcsmtimeout):
  proc contextsetcsmtimeout*(context: ptr contextt_1023410526; csmtmeout: cuint): void {.
      cdecl, importc: "coap_context_set_csm_timeout".}
else:
  static :
    hint("Declaration of " & "coap_context_set_csm_timeout" &
        " already exists, not redeclaring")
when not declared(iodoepoll):
  proc iodoepoll*(ctx: ptr contextt_1023410526; events: ptr structepollevent;
                  nevents: csize_t): void {.cdecl, importc: "coap_io_do_epoll".}
else:
  static :
    hint("Declaration of " & "coap_io_do_epoll" &
        " already exists, not redeclaring")
when not declared(adddata):
  proc adddata*(pdu: ptr pdut_1023410619; len: csize_t; data: ptr uint8): cint {.
      cdecl, importc: "coap_add_data".}
else:
  static :
    hint("Declaration of " & "coap_add_data" &
        " already exists, not redeclaring")
when not declared(newbinary):
  proc newbinary*(size: csize_t): ptr binaryt_1023410757 {.cdecl,
      importc: "coap_new_binary".}
else:
  static :
    hint("Declaration of " & "coap_new_binary" &
        " already exists, not redeclaring")
when not declared(sessiongetacktimeout):
  proc sessiongetacktimeout*(session: ptr sessiont_1023410554): fixedpointt_1023410679 {.
      cdecl, importc: "coap_session_get_ack_timeout".}
else:
  static :
    hint("Declaration of " & "coap_session_get_ack_timeout" &
        " already exists, not redeclaring")
when not declared(setprng):
  proc setprng*(rng: randfunct_1023410625): void {.cdecl,
      importc: "coap_set_prng".}
else:
  static :
    hint("Declaration of " & "coap_set_prng" &
        " already exists, not redeclaring")
when not declared(stringtlssupport):
  proc stringtlssupport*(buffer: cstring; bufsize: csize_t): cstring {.cdecl,
      importc: "coap_string_tls_support".}
else:
  static :
    hint("Declaration of " & "coap_string_tls_support" &
        " already exists, not redeclaring")
when not declared(addresssetport):
  proc addresssetport*(addrarg: ptr addresst_1023410675; port: uint16): void {.
      cdecl, importc: "coap_address_set_port".}
else:
  static :
    hint("Declaration of " & "coap_address_set_port" &
        " already exists, not redeclaring")
when not declared(Coapdefaultmaxage):
  when 60 is static:
    const
      Coapdefaultmaxage* = 60 ## Generated based on /usr/include/coap3/pdu.h:37:9
  else:
    let Coapdefaultmaxage* = 60 ## Generated based on /usr/include/coap3/pdu.h:37:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_MAX_AGE" &
        " already exists, not redeclaring")
when not declared(contextsetpki):
  proc contextsetpki*(context: ptr contextt_1023410526; setupdata: ptr dtlspkit_1023410663): cint {.
      cdecl, importc: "coap_context_set_pki".}
else:
  static :
    hint("Declaration of " & "coap_context_set_pki" &
        " already exists, not redeclaring")
when not declared(asyncissupported):
  proc asyncissupported*(): cint {.cdecl, importc: "coap_async_is_supported".}
else:
  static :
    hint("Declaration of " & "coap_async_is_supported" &
        " already exists, not redeclaring")
when not declared(ioprepareepoll):
  proc ioprepareepoll*(ctx: ptr contextt_1023410526; now: tickt_1023410685): cuint {.
      cdecl, importc: "coap_io_prepare_epoll".}
else:
  static :
    hint("Declaration of " & "coap_io_prepare_epoll" &
        " already exists, not redeclaring")
when not declared(printlink):
  proc printlink*(resource: ptr resourcet_1023410597; buf: ptr cuchar;
                  len: ptr csize_t; offset: ptr csize_t): printstatust_1023410705 {.
      cdecl, importc: "coap_print_link".}
else:
  static :
    hint("Declaration of " & "coap_print_link" &
        " already exists, not redeclaring")
when not declared(pduinit):
  proc pduinit*(typearg: pdutypet_1023410548; code: pducodet_1023410727;
                mid: midt_1023410532; size: csize_t): ptr pdut_1023410619 {.
      cdecl, importc: "coap_pdu_init".}
else:
  static :
    hint("Declaration of " & "coap_pdu_init" &
        " already exists, not redeclaring")
when not declared(handleevent):
  proc handleevent*(context: ptr contextt_1023410526; event: eventt_1023410564;
                    session: ptr sessiont_1023410554): cint {.cdecl,
      importc: "coap_handle_event".}
else:
  static :
    hint("Declaration of " & "coap_handle_event" &
        " already exists, not redeclaring")
when not declared(Coapdefaultmaxretransmit):
  when 4 is static:
    const
      Coapdefaultmaxretransmit* = 4 ## Generated based on /usr/include/coap3/coap_session.h:420:9
  else:
    let Coapdefaultmaxretransmit* = 4 ## Generated based on /usr/include/coap3/coap_session.h:420:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_MAX_RETRANSMIT" &
        " already exists, not redeclaring")
when not declared(optionfilterunset):
  proc optionfilterunset*(filter: ptr optfiltert_1023410595; number: optionnumt_1023410540): cint {.
      cdecl, importc: "coap_option_filter_unset".}
else:
  static :
    hint("Declaration of " & "coap_option_filter_unset" &
        " already exists, not redeclaring")
when not declared(Coaprunblock):
  when Coaprunblockdeprecatedusecoapiowait is typedesc:
    type
      Coaprunblock* = Coaprunblockdeprecatedusecoapiowait ## Generated based on /usr/include/coap3/net.h:777:9
  else:
    when Coaprunblockdeprecatedusecoapiowait is static:
      const
        Coaprunblock* = Coaprunblockdeprecatedusecoapiowait ## Generated based on /usr/include/coap3/net.h:777:9
    else:
      let Coaprunblock* = Coaprunblockdeprecatedusecoapiowait ## Generated based on /usr/include/coap3/net.h:777:9
else:
  static :
    hint("Declaration of " & "COAP_RUN_BLOCK" &
        " already exists, not redeclaring")
when not declared(dtlsgetloglevel):
  proc dtlsgetloglevel*(): cint {.cdecl, importc: "coap_dtls_get_log_level".}
else:
  static :
    hint("Declaration of " & "coap_dtls_get_log_level" &
        " already exists, not redeclaring")
when not declared(newerrorresponse):
  proc newerrorresponse*(request: ptr pdut_1023410619; code: pducodet_1023410727;
                         opts: ptr optfiltert_1023410595): ptr pdut_1023410619 {.
      cdecl, importc: "coap_new_error_response".}
else:
  static :
    hint("Declaration of " & "coap_new_error_response" &
        " already exists, not redeclaring")
when not declared(Coapresourceflagsreleaseuri):
  when 1 is static:
    const
      Coapresourceflagsreleaseuri* = 1 ## Generated based on /usr/include/coap3/resource.h:52:9
  else:
    let Coapresourceflagsreleaseuri* = 1 ## Generated based on /usr/include/coap3/resource.h:52:9
else:
  static :
    hint("Declaration of " & "COAP_RESOURCE_FLAGS_RELEASE_URI" &
        " already exists, not redeclaring")
when not declared(cleanup):
  proc cleanup*(): void {.cdecl, importc: "coap_cleanup".}
else:
  static :
    hint("Declaration of " & "coap_cleanup" & " already exists, not redeclaring")
when not declared(setloghandler):
  proc setloghandler*(handler: loghandlert_1023410520): void {.cdecl,
      importc: "coap_set_log_handler".}
else:
  static :
    hint("Declaration of " & "coap_set_log_handler" &
        " already exists, not redeclaring")
when not declared(sessiongetcontext):
  proc sessiongetcontext*(session: ptr sessiont_1023410554): ptr contextt_1023410526 {.
      cdecl, importc: "coap_session_get_context".}
else:
  static :
    hint("Declaration of " & "coap_session_get_context" &
        " already exists, not redeclaring")
when not declared(Coaperrfd):
  when stderr is typedesc:
    type
      Coaperrfd* = stderr    ## Generated based on /usr/include/coap3/coap_debug.h:32:9
  else:
    when stderr is static:
      const
        Coaperrfd* = stderr  ## Generated based on /usr/include/coap3/coap_debug.h:32:9
    else:
      let Coaperrfd* = stderr ## Generated based on /usr/include/coap3/coap_debug.h:32:9
else:
  static :
    hint("Declaration of " & "COAP_ERR_FD" & " already exists, not redeclaring")
when not declared(addressgetport):
  proc addressgetport*(addrarg: ptr addresst_1023410675): uint16 {.cdecl,
      importc: "coap_address_get_port".}
else:
  static :
    hint("Declaration of " & "coap_address_get_port" &
        " already exists, not redeclaring")
when not declared(splitproxyuri):
  proc splitproxyuri*(strvar: ptr uint8; len: csize_t; uri: ptr urit_1023410627): cint {.
      cdecl, importc: "coap_split_proxy_uri".}
else:
  static :
    hint("Declaration of " & "coap_split_proxy_uri" &
        " already exists, not redeclaring")
when not declared(pdugetmid):
  proc pdugetmid*(pdu: ptr pdut_1023410619): midt_1023410532 {.cdecl,
      importc: "coap_pdu_get_mid".}
else:
  static :
    hint("Declaration of " & "coap_pdu_get_mid" &
        " already exists, not redeclaring")
when not declared(tlsissupported):
  proc tlsissupported*(): cint {.cdecl, importc: "coap_tls_is_supported".}
else:
  static :
    hint("Declaration of " & "coap_tls_is_supported" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosemac):
  when 97 is static:
    const
      Coapmediatypeapplicationcosemac* = 97 ## Generated based on /usr/include/coap3/pdu.h:204:9
  else:
    let Coapmediatypeapplicationcosemac* = 97 ## Generated based on /usr/include/coap3/pdu.h:204:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_MAC" &
        " already exists, not redeclaring")
when not declared(optsetheader):
  proc optsetheader*(opt: ptr optt_1023410570; maxlen: csize_t; delta: uint16;
                     length: csize_t): csize_t {.cdecl,
      importc: "coap_opt_setheader".}
else:
  static :
    hint("Declaration of " & "coap_opt_setheader" &
        " already exists, not redeclaring")
when not declared(newstring):
  proc newstring*(size: csize_t): ptr stringt_1023410593 {.cdecl,
      importc: "coap_new_string".}
else:
  static :
    hint("Declaration of " & "coap_new_string" &
        " already exists, not redeclaring")
when not declared(encodevarsafe8):
  proc encodevarsafe8*(buf: ptr uint8; length: csize_t; value: uint64): cuint {.
      cdecl, importc: "coap_encode_var_safe8".}
else:
  static :
    hint("Declaration of " & "coap_encode_var_safe8" &
        " already exists, not redeclaring")
when not declared(resourcenotifyobservers):
  proc resourcenotifyobservers*(resource: ptr resourcet_1023410597;
                                query: ptr stringt_1023410593): cint {.cdecl,
      importc: "coap_resource_notify_observers".}
else:
  static :
    hint("Declaration of " & "coap_resource_notify_observers" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptionalternativeaddress):
  when 2 is static:
    const
      Coapsignalingoptionalternativeaddress* = 2 ## Generated based on /usr/include/coap3/pdu.h:182:9
  else:
    let Coapsignalingoptionalternativeaddress* = 2 ## Generated based on /usr/include/coap3/pdu.h:182:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_ALTERNATIVE_ADDRESS" &
        " already exists, not redeclaring")
when not declared(optblocknum):
  proc optblocknum*(blockopt: ptr optt_1023410570): cuint {.cdecl,
      importc: "coap_opt_block_num".}
else:
  static :
    hint("Declaration of " & "coap_opt_block_num" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptionblockwisetransfer):
  when 4 is static:
    const
      Coapsignalingoptionblockwisetransfer* = 4 ## Generated based on /usr/include/coap3/pdu.h:178:9
  else:
    let Coapsignalingoptionblockwisetransfer* = 4 ## Generated based on /usr/include/coap3/pdu.h:178:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_BLOCK_WISE_TRANSFER" &
        " already exists, not redeclaring")
when not declared(sessiondisconnected):
  proc sessiondisconnected*(session: ptr sessiont_1023410554;
                            reason: nackreasont_1023410755): void {.cdecl,
      importc: "coap_session_disconnected".}
else:
  static :
    hint("Declaration of " & "coap_session_disconnected" &
        " already exists, not redeclaring")
when not declared(ticksfromrtus):
  proc ticksfromrtus*(t: uint64): tickt_1023410685 {.cdecl,
      importc: "coap_ticks_from_rt_us".}
else:
  static :
    hint("Declaration of " & "coap_ticks_from_rt_us" &
        " already exists, not redeclaring")
when not declared(sessiongettls):
  proc sessiongettls*(session: ptr sessiont_1023410554; tlslib: ptr tlslibraryt_1023410643): pointer {.
      cdecl, importc: "coap_session_get_tls".}
else:
  static :
    hint("Declaration of " & "coap_session_get_tls" &
        " already exists, not redeclaring")
when not declared(geturipath):
  proc geturipath*(request: ptr pdut_1023410619): ptr stringt_1023410593 {.
      cdecl, importc: "coap_get_uri_path".}
else:
  static :
    hint("Declaration of " & "coap_get_uri_path" &
        " already exists, not redeclaring")
when not declared(sessiongetstate):
  proc sessiongetstate*(session: ptr sessiont_1023410554): sessionstatet_1023410747 {.
      cdecl, importc: "coap_session_get_state".}
else:
  static :
    hint("Declaration of " & "coap_session_get_state" &
        " already exists, not redeclaring")
when not declared(Coapoptfiltershort):
  when 6 is static:
    const
      Coapoptfiltershort* = 6 ## Generated based on /usr/include/coap3/option.h:77:9
  else:
    let Coapoptfiltershort* = 6 ## Generated based on /usr/include/coap3/option.h:77:9
else:
  static :
    hint("Declaration of " & "COAP_OPT_FILTER_SHORT" &
        " already exists, not redeclaring")
when not declared(newendpoint):
  proc newendpoint*(context: ptr contextt_1023410526; listenaddr: ptr addresst_1023410675;
                    proto: protot_1023410542): ptr endpointt_1023410703 {.cdecl,
      importc: "coap_new_endpoint".}
else:
  static :
    hint("Declaration of " & "coap_new_endpoint" &
        " already exists, not redeclaring")
when not declared(contextgetsessiontimeout):
  proc contextgetsessiontimeout*(context: ptr contextt_1023410526): cuint {.
      cdecl, importc: "coap_context_get_session_timeout".}
else:
  static :
    hint("Declaration of " & "coap_context_get_session_timeout" &
        " already exists, not redeclaring")
when not declared(addblock):
  proc addblock*(pdu: ptr pdut_1023410619; len: csize_t; data: ptr uint8;
                 blocknum: cuint; blockszx: cuchar): cint {.cdecl,
      importc: "coap_add_block".}
else:
  static :
    hint("Declaration of " & "coap_add_block" &
        " already exists, not redeclaring")
when not declared(setappdata):
  proc setappdata*(context: ptr contextt_1023410526; data: pointer): void {.
      cdecl, importc: "coap_set_app_data".}
else:
  static :
    hint("Declaration of " & "coap_set_app_data" &
        " already exists, not redeclaring")
when not declared(registerhandler):
  proc registerhandler*(resource: ptr resourcet_1023410597; methodarg: requestt_1023410731;
                        handler: methodhandlert_1023410578): void {.cdecl,
      importc: "coap_register_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_handler" &
        " already exists, not redeclaring")
when not declared(Coapoptioncontentformat):
  when 12 is static:
    const
      Coapoptioncontentformat* = 12 ## Generated based on /usr/include/coap3/pdu.h:116:9
  else:
    let Coapoptioncontentformat* = 12 ## Generated based on /usr/include/coap3/pdu.h:116:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_CONTENT_FORMAT" &
        " already exists, not redeclaring")
when not declared(contextgetmaxhandshakesessions):
  proc contextgetmaxhandshakesessions*(context: ptr contextt_1023410526): cuint {.
      cdecl, importc: "coap_context_get_max_handshake_sessions".}
else:
  static :
    hint("Declaration of " & "coap_context_get_max_handshake_sessions" &
        " already exists, not redeclaring")
when not declared(Coapmaxlatency):
  when 100 is static:
    const
      Coapmaxlatency* = 100  ## Generated based on /usr/include/coap3/coap_session.h:468:9
  else:
    let Coapmaxlatency* = 100 ## Generated based on /usr/include/coap3/coap_session.h:468:9
else:
  static :
    hint("Declaration of " & "COAP_MAX_LATENCY" &
        " already exists, not redeclaring")
when not declared(optparse):
  proc optparse*(opt: ptr optt_1023410570; length: csize_t; result: ptr optiont_1023410609): csize_t {.
      cdecl, importc: "coap_opt_parse".}
else:
  static :
    hint("Declaration of " & "coap_opt_parse" &
        " already exists, not redeclaring")
when not declared(Coapobservecancel):
  when 1 is static:
    const
      Coapobservecancel* = 1 ## Generated based on /usr/include/coap3/subscribe.h:39:9
  else:
    let Coapobservecancel* = 1 ## Generated based on /usr/include/coap3/subscribe.h:39:9
else:
  static :
    hint("Declaration of " & "COAP_OBSERVE_CANCEL" &
        " already exists, not redeclaring")
when not declared(startup):
  proc startup*(): void {.cdecl, importc: "coap_startup".}
else:
  static :
    hint("Declaration of " & "coap_startup" & " already exists, not redeclaring")
when not declared(contextsetpsk):
  proc contextsetpsk*(context: ptr contextt_1023410526; hint: cstring;
                      key: ptr uint8; keylen: csize_t): cint {.cdecl,
      importc: "coap_context_set_psk".}
else:
  static :
    hint("Declaration of " & "coap_context_set_psk" &
        " already exists, not redeclaring")
when not declared(resourceproxyuriinit):
  proc resourceproxyuriinit*(handler: methodhandlert_1023410578;
                             hostnamecount: csize_t;
                             hostnamelist: ptr UncheckedArray[cstring]): ptr resourcet_1023410597 {.
      cdecl, importc: "coap_resource_proxy_uri_init".}
else:
  static :
    hint("Declaration of " & "coap_resource_proxy_uri_init" &
        " already exists, not redeclaring")
when not declared(setloglevel):
  proc setloglevel*(level: logt_1023410781): void {.cdecl,
      importc: "coap_set_log_level".}
else:
  static :
    hint("Declaration of " & "coap_set_log_level" &
        " already exists, not redeclaring")
when not declared(Coapeventdtlsconnected):
  when 478 is static:
    const
      Coapeventdtlsconnected* = 478 ## Generated based on /usr/include/coap3/coap_event.h:33:9
  else:
    let Coapeventdtlsconnected* = 478 ## Generated based on /usr/include/coap3/coap_event.h:33:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_DTLS_CONNECTED" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationoctetstream):
  when 42 is static:
    const
      Coapmediatypeapplicationoctetstream* = 42 ## Generated based on /usr/include/coap3/pdu.h:192:9
  else:
    let Coapmediatypeapplicationoctetstream* = 42 ## Generated based on /usr/include/coap3/pdu.h:192:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_OCTET_STREAM" &
        " already exists, not redeclaring")
when not declared(registerponghandler):
  proc registerponghandler*(context: ptr contextt_1023410526;
                            handler: ponghandlert_1023410623): void {.cdecl,
      importc: "coap_register_pong_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_pong_handler" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosekey):
  when 101 is static:
    const
      Coapmediatypeapplicationcosekey* = 101 ## Generated based on /usr/include/coap3/pdu.h:207:9
  else:
    let Coapmediatypeapplicationcosekey* = 101 ## Generated based on /usr/include/coap3/pdu.h:207:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_KEY" &
        " already exists, not redeclaring")
when not declared(decodevarbytes):
  proc decodevarbytes*(buf: ptr uint8; length: csize_t): cuint {.cdecl,
      importc: "coap_decode_var_bytes".}
else:
  static :
    hint("Declaration of " & "coap_decode_var_bytes" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsenmljson):
  when 110 is static:
    const
      Coapmediatypeapplicationsenmljson* = 110 ## Generated based on /usr/include/coap3/pdu.h:211:9
  else:
    let Coapmediatypeapplicationsenmljson* = 110 ## Generated based on /usr/include/coap3/pdu.h:211:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENML_JSON" &
        " already exists, not redeclaring")
when not declared(newmessageid):
  proc newmessageid*(session: ptr sessiont_1023410554): uint16 {.cdecl,
      importc: "coap_new_message_id".}
else:
  static :
    hint("Declaration of " & "coap_new_message_id" &
        " already exists, not redeclaring")
when not declared(addressinit):
  proc addressinit*(addrarg: ptr addresst_1023410675): void {.cdecl,
      importc: "coap_address_init".}
else:
  static :
    hint("Declaration of " & "coap_address_init" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcoseencrypt):
  when 96 is static:
    const
      Coapmediatypeapplicationcoseencrypt* = 96 ## Generated based on /usr/include/coap3/pdu.h:202:9
  else:
    let Coapmediatypeapplicationcoseencrypt* = 96 ## Generated based on /usr/include/coap3/pdu.h:202:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_ENCRYPT" &
        " already exists, not redeclaring")
when not declared(cleareventhandler):
  proc cleareventhandler*(context: ptr contextt_1023410526): void {.cdecl,
      importc: "coap_clear_event_handler".}
else:
  static :
    hint("Declaration of " & "coap_clear_event_handler" &
        " already exists, not redeclaring")
when not declared(debugsetpacketloss):
  proc debugsetpacketloss*(losslevel: cstring): cint {.cdecl,
      importc: "coap_debug_set_packet_loss".}
else:
  static :
    hint("Declaration of " & "coap_debug_set_packet_loss" &
        " already exists, not redeclaring")
when not declared(realloctype):
  proc realloctype*(typearg: memorytagt_1023410709; p: pointer; size: csize_t): pointer {.
      cdecl, importc: "coap_realloc_type".}
else:
  static :
    hint("Declaration of " & "coap_realloc_type" &
        " already exists, not redeclaring")
when not declared(newclientsessionpki):
  proc newclientsessionpki*(ctx: ptr contextt_1023410526; localif: ptr addresst_1023410675;
                            server: ptr addresst_1023410675; proto: protot_1023410542;
                            setupdata: ptr dtlspkit_1023410663): ptr sessiont_1023410554 {.
      cdecl, importc: "coap_new_client_session_pki".}
else:
  static :
    hint("Declaration of " & "coap_new_client_session_pki" &
        " already exists, not redeclaring")
when not declared(Coapoptionlocationpath):
  when 8 is static:
    const
      Coapoptionlocationpath* = 8 ## Generated based on /usr/include/coap3/pdu.h:113:9
  else:
    let Coapoptionlocationpath* = 8 ## Generated based on /usr/include/coap3/pdu.h:113:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_LOCATION_PATH" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptionholdoff):
  when 4 is static:
    const
      Coapsignalingoptionholdoff* = 4 ## Generated based on /usr/include/coap3/pdu.h:183:9
  else:
    let Coapsignalingoptionholdoff* = 4 ## Generated based on /usr/include/coap3/pdu.h:183:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_HOLD_OFF" &
        " already exists, not redeclaring")
when not declared(Coapsdefaultport):
  when 5684 is static:
    const
      Coapsdefaultport* = 5684 ## Generated based on /usr/include/coap3/pdu.h:36:9
  else:
    let Coapsdefaultport* = 5684 ## Generated based on /usr/include/coap3/pdu.h:36:9
else:
  static :
    hint("Declaration of " & "COAPS_DEFAULT_PORT" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsenmlxml):
  when 310 is static:
    const
      Coapmediatypeapplicationsenmlxml* = 310 ## Generated based on /usr/include/coap3/pdu.h:217:9
  else:
    let Coapmediatypeapplicationsenmlxml* = 310 ## Generated based on /usr/include/coap3/pdu.h:217:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENML_XML" &
        " already exists, not redeclaring")
when not declared(resourcesetuserdata):
  proc resourcesetuserdata*(resource: ptr resourcet_1023410597; data: pointer): void {.
      cdecl, importc: "coap_resource_set_userdata".}
else:
  static :
    hint("Declaration of " & "coap_resource_set_userdata" &
        " already exists, not redeclaring")
when not declared(encodevarsafe):
  proc encodevarsafe*(buf: ptr uint8; length: csize_t; value: cuint): cuint {.
      cdecl, importc: "coap_encode_var_safe".}
else:
  static :
    hint("Declaration of " & "coap_encode_var_safe" &
        " already exists, not redeclaring")
when not declared(Coapeventsessionfailed):
  when 8195 is static:
    const
      Coapeventsessionfailed* = 8195 ## Generated based on /usr/include/coap3/coap_event.h:49:9
  else:
    let Coapeventsessionfailed* = 8195 ## Generated based on /usr/include/coap3/coap_event.h:49:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_SESSION_FAILED" &
        " already exists, not redeclaring")
when not declared(sessionsettypeclient):
  proc sessionsettypeclient*(session: ptr sessiont_1023410554): cint {.cdecl,
      importc: "coap_session_set_type_client".}
else:
  static :
    hint("Declaration of " & "coap_session_set_type_client" &
        " already exists, not redeclaring")
when not declared(Coapurischemesecuremask):
  when 1 is static:
    const
      Coapurischemesecuremask* = 1 ## Generated based on /usr/include/coap3/uri.h:33:9
  else:
    let Coapurischemesecuremask* = 1 ## Generated based on /usr/include/coap3/uri.h:33:9
else:
  static :
    hint("Declaration of " & "COAP_URI_SCHEME_SECURE_MASK" &
        " already exists, not redeclaring")
when not declared(optlength):
  proc optlength*(opt: ptr optt_1023410570): uint32 {.cdecl,
      importc: "coap_opt_length".}
else:
  static :
    hint("Declaration of " & "coap_opt_length" &
        " already exists, not redeclaring")
when not declared(splitpath):
  proc splitpath*(s: ptr uint8; length: csize_t; buf: ptr cuchar;
                  buflen: ptr csize_t): cint {.cdecl, importc: "coap_split_path".}
else:
  static :
    hint("Declaration of " & "coap_split_path" &
        " already exists, not redeclaring")
when not declared(Coapdebugfd):
  when stdout is typedesc:
    type
      Coapdebugfd* = stdout  ## Generated based on /usr/include/coap3/coap_debug.h:25:9
  else:
    when stdout is static:
      const
        Coapdebugfd* = stdout ## Generated based on /usr/include/coap3/coap_debug.h:25:9
    else:
      let Coapdebugfd* = stdout ## Generated based on /usr/include/coap3/coap_debug.h:25:9
else:
  static :
    hint("Declaration of " & "COAP_DEBUG_FD" &
        " already exists, not redeclaring")
when not declared(Coapeventdtlserror):
  when 512 is static:
    const
      Coapeventdtlserror* = 512 ## Generated based on /usr/include/coap3/coap_event.h:35:9
  else:
    let Coapeventdtlserror* = 512 ## Generated based on /usr/include/coap3/coap_event.h:35:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_DTLS_ERROR" &
        " already exists, not redeclaring")
when not declared(cachegetappdata):
  proc cachegetappdata*(cacheentry: ptr cacheentryt_1023410667): pointer {.
      cdecl, importc: "coap_cache_get_app_data".}
else:
  static :
    hint("Declaration of " & "coap_cache_get_app_data" &
        " already exists, not redeclaring")
when not declared(clockinit):
  proc clockinit*(): void {.cdecl, importc: "coap_clock_init".}
else:
  static :
    hint("Declaration of " & "coap_clock_init" &
        " already exists, not redeclaring")
when not declared(Coapmaxstrconstfunc):
  when 2 is static:
    const
      Coapmaxstrconstfunc* = 2 ## Generated based on /usr/include/coap3/str.h:156:9
  else:
    let Coapmaxstrconstfunc* = 2 ## Generated based on /usr/include/coap3/str.h:156:9
else:
  static :
    hint("Declaration of " & "COAP_MAX_STR_CONST_FUNC" &
        " already exists, not redeclaring")
when not declared(optvalue):
  proc optvalue*(opt: ptr optt_1023410570): ptr uint8 {.cdecl,
      importc: "coap_opt_value".}
else:
  static :
    hint("Declaration of " & "coap_opt_value" &
        " already exists, not redeclaring")
when not declared(sessiongetpskhint):
  proc sessiongetpskhint*(session: ptr sessiont_1023410554): ptr binconstt_1023410723 {.
      cdecl, importc: "coap_session_get_psk_hint".}
else:
  static :
    hint("Declaration of " & "coap_session_get_psk_hint" &
        " already exists, not redeclaring")
when not declared(writeblockopt):
  proc writeblockopt*(blockarg: ptr blockt_1023410516; number: optionnumt_1023410540;
                      pdu: ptr pdut_1023410619; datalength: csize_t): cint {.
      cdecl, importc: "coap_write_block_opt".}
else:
  static :
    hint("Declaration of " & "coap_write_block_opt" &
        " already exists, not redeclaring")
when not declared(packagename):
  proc packagename*(): cstring {.cdecl, importc: "coap_package_name".}
else:
  static :
    hint("Declaration of " & "coap_package_name" &
        " already exists, not redeclaring")
when not declared(coapsend):
  proc coapsend*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619): midt_1023410532 {.
      cdecl, importc: "coap_send".}
else:
  static :
    hint("Declaration of " & "coap_send" & " already exists, not redeclaring")
when not declared(Coapoptionblock1):
  when 27 is static:
    const
      Coapoptionblock1* = 27 ## Generated based on /usr/include/coap3/pdu.h:125:9
  else:
    let Coapoptionblock1* = 27 ## Generated based on /usr/include/coap3/pdu.h:125:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_BLOCK1" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptioncustody):
  when 2 is static:
    const
      Coapsignalingoptioncustody* = 2 ## Generated based on /usr/include/coap3/pdu.h:180:9
  else:
    let Coapsignalingoptioncustody* = 2 ## Generated based on /usr/include/coap3/pdu.h:180:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_CUSTODY" &
        " already exists, not redeclaring")
when not declared(makestrconst):
  proc makestrconst*(string: cstring): ptr strconstt_1023410536 {.cdecl,
      importc: "coap_make_str_const".}
else:
  static :
    hint("Declaration of " & "coap_make_str_const" &
        " already exists, not redeclaring")
when not declared(adddatablockedresponse):
  proc adddatablockedresponse*(request: ptr pdut_1023410619; response: ptr pdut_1023410619;
                               mediatype: uint16; maxage: cint; length: csize_t;
                               data: ptr uint8): void {.cdecl,
      importc: "coap_add_data_blocked_response".}
else:
  static :
    hint("Declaration of " & "coap_add_data_blocked_response" &
        " already exists, not redeclaring")
when not declared(optionnext):
  proc optionnext*(oi: ptr optiteratort_1023410699): ptr optt_1023410570 {.
      cdecl, importc: "coap_option_next".}
else:
  static :
    hint("Declaration of " & "coap_option_next" &
        " already exists, not redeclaring")
when not declared(contextgetfd):
  proc contextgetfd*(context: ptr contextt_1023410526): cint {.cdecl,
      importc: "coap_context_get_coap_fd".}
else:
  static :
    hint("Declaration of " & "coap_context_get_coap_fd" &
        " already exists, not redeclaring")
when not declared(Coapoptionsize1):
  when 60 is static:
    const
      Coapoptionsize1* = 60  ## Generated based on /usr/include/coap3/pdu.h:129:9
  else:
    let Coapoptionsize1* = 60 ## Generated based on /usr/include/coap3/pdu.h:129:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_SIZE1" &
        " already exists, not redeclaring")
when not declared(responsephrase):
  proc responsephrase*(code: cuchar): cstring {.cdecl,
      importc: "coap_response_phrase".}
else:
  static :
    hint("Declaration of " & "coap_response_phrase" &
        " already exists, not redeclaring")
when not declared(resourcereleaseuserdatahandler):
  proc resourcereleaseuserdatahandler*(context: ptr contextt_1023410526;
      callback: resourcereleaseuserdatahandlert_1023410605): void {.cdecl,
      importc: "coap_resource_release_userdata_handler".}
else:
  static :
    hint("Declaration of " & "coap_resource_release_userdata_handler" &
        " already exists, not redeclaring")
when not declared(optionfilterclear):
  proc optionfilterclear*(filter: ptr optfiltert_1023410595): void {.cdecl,
      importc: "coap_option_filter_clear".}
else:
  static :
    hint("Declaration of " & "coap_option_filter_clear" &
        " already exists, not redeclaring")
when not declared(Coapsignalingoptionbadcsmoption):
  when 2 is static:
    const
      Coapsignalingoptionbadcsmoption* = 2 ## Generated based on /usr/include/coap3/pdu.h:185:9
  else:
    let Coapsignalingoptionbadcsmoption* = 2 ## Generated based on /usr/include/coap3/pdu.h:185:9
else:
  static :
    hint("Declaration of " & "COAP_SIGNALING_OPTION_BAD_CSM_OPTION" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsensmlexi):
  when 115 is static:
    const
      Coapmediatypeapplicationsensmlexi* = 115 ## Generated based on /usr/include/coap3/pdu.h:216:9
  else:
    let Coapmediatypeapplicationsensmlexi* = 115 ## Generated based on /usr/include/coap3/pdu.h:216:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENSML_EXI" &
        " already exists, not redeclaring")
when not declared(pdugetcode):
  proc pdugetcode*(pdu: ptr pdut_1023410619): pducodet_1023410727 {.cdecl,
      importc: "coap_pdu_get_code".}
else:
  static :
    hint("Declaration of " & "coap_pdu_get_code" &
        " already exists, not redeclaring")
when not declared(pdugettoken):
  proc pdugettoken*(pdu: ptr pdut_1023410619): binconstt_1023410723 {.cdecl,
      importc: "coap_pdu_get_token".}
else:
  static :
    hint("Declaration of " & "coap_pdu_get_token" &
        " already exists, not redeclaring")
when not declared(freeasync):
  proc freeasync*(session: ptr sessiont_1023410554; async: ptr asynct_1023410611): void {.
      cdecl, importc: "coap_free_async".}
else:
  static :
    hint("Declaration of " & "coap_free_async" &
        " already exists, not redeclaring")
when not declared(getdata):
  proc getdata*(pdu: ptr pdut_1023410619; len: ptr csize_t; data: ptr ptr uint8): cint {.
      cdecl, importc: "coap_get_data".}
else:
  static :
    hint("Declaration of " & "coap_get_data" &
        " already exists, not redeclaring")
when not declared(socketstrerror):
  proc socketstrerror*(): cstring {.cdecl, importc: "coap_socket_strerror".}
else:
  static :
    hint("Declaration of " & "coap_socket_strerror" &
        " already exists, not redeclaring")
when not declared(Coaperrorphraselength):
  when 32 is static:
    const
      Coaperrorphraselength* = 32 ## Generated based on /usr/include/coap3/pdu.h:158:9
  else:
    let Coaperrorphraselength* = 32 ## Generated based on /usr/include/coap3/pdu.h:158:9
else:
  static :
    hint("Declaration of " & "COAP_ERROR_PHRASE_LENGTH" &
        " already exists, not redeclaring")
when not declared(registernackhandler):
  proc registernackhandler*(context: ptr contextt_1023410526;
                            handler: nackhandlert_1023410580): void {.cdecl,
      importc: "coap_register_nack_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_nack_handler" &
        " already exists, not redeclaring")
when not declared(Coapeventtcpfailed):
  when 4099 is static:
    const
      Coapeventtcpfailed* = 4099 ## Generated based on /usr/include/coap3/coap_event.h:42:9
  else:
    let Coapeventtcpfailed* = 4099 ## Generated based on /usr/include/coap3/coap_event.h:42:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_TCP_FAILED" &
        " already exists, not redeclaring")
when not declared(cancelobserve):
  proc cancelobserve*(session: ptr sessiont_1023410554; token: ptr binaryt_1023410757;
                      messagetype: pdutypet_1023410548): cint {.cdecl,
      importc: "coap_cancel_observe".}
else:
  static :
    hint("Declaration of " & "coap_cancel_observe" &
        " already exists, not redeclaring")
when not declared(gettlslibraryversion):
  proc gettlslibraryversion*(): ptr tlsversiont_1023410530 {.cdecl,
      importc: "coap_get_tls_library_version".}
else:
  static :
    hint("Declaration of " & "coap_get_tls_library_version" &
        " already exists, not redeclaring")
when not declared(freecontext):
  proc freecontext*(context: ptr contextt_1023410526): void {.cdecl,
      importc: "coap_free_context".}
else:
  static :
    hint("Declaration of " & "coap_free_context" &
        " already exists, not redeclaring")
when not declared(Coapdtlshintlength):
  when 128 is static:
    const
      Coapdtlshintlength* = 128 ## Generated based on /usr/include/coap3/coap_dtls.h:28:9
  else:
    let Coapdtlshintlength* = 128 ## Generated based on /usr/include/coap3/coap_dtls.h:28:9
else:
  static :
    hint("Declaration of " & "COAP_DTLS_HINT_LENGTH" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosemac0):
  when 17 is static:
    const
      Coapmediatypeapplicationcosemac0* = 17 ## Generated based on /usr/include/coap3/pdu.h:205:9
  else:
    let Coapmediatypeapplicationcosemac0* = 17 ## Generated based on /usr/include/coap3/pdu.h:205:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_MAC0" &
        " already exists, not redeclaring")
when not declared(optsize):
  proc optsize*(opt: ptr optt_1023410570): csize_t {.cdecl,
      importc: "coap_opt_size".}
else:
  static :
    hint("Declaration of " & "coap_opt_size" &
        " already exists, not redeclaring")
when not declared(sessiongetackrandomfactor):
  proc sessiongetackrandomfactor*(session: ptr sessiont_1023410554): fixedpointt_1023410679 {.
      cdecl, importc: "coap_session_get_ack_random_factor".}
else:
  static :
    hint("Declaration of " & "coap_session_get_ack_random_factor" &
        " already exists, not redeclaring")
when not declared(Coapoptionblock2):
  when 23 is static:
    const
      Coapoptionblock2* = 23 ## Generated based on /usr/include/coap3/pdu.h:124:9
  else:
    let Coapoptionblock2* = 23 ## Generated based on /usr/include/coap3/pdu.h:124:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_BLOCK2" &
        " already exists, not redeclaring")
when not declared(cloneuri):
  proc cloneuri*(uri: ptr urit_1023410627): ptr urit_1023410627 {.cdecl,
      importc: "coap_clone_uri".}
else:
  static :
    hint("Declaration of " & "coap_clone_uri" &
        " already exists, not redeclaring")
when not declared(Coapoptionobserve):
  when 6 is static:
    const
      Coapoptionobserve* = 6 ## Generated based on /usr/include/coap3/pdu.h:111:9
  else:
    let Coapoptionobserve* = 6 ## Generated based on /usr/include/coap3/pdu.h:111:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_OBSERVE" &
        " already exists, not redeclaring")
when not declared(deletestrconst):
  proc deletestrconst*(string: ptr strconstt_1023410536): void {.cdecl,
      importc: "coap_delete_str_const".}
else:
  static :
    hint("Declaration of " & "coap_delete_str_const" &
        " already exists, not redeclaring")
when not declared(deletebinconst):
  proc deletebinconst*(binary: ptr binconstt_1023410723): void {.cdecl,
      importc: "coap_delete_bin_const".}
else:
  static :
    hint("Declaration of " & "coap_delete_bin_const" &
        " already exists, not redeclaring")
when not declared(sessionnewtoken):
  proc sessionnewtoken*(session: ptr sessiont_1023410554; length: ptr csize_t;
                        token: ptr uint8): void {.cdecl,
      importc: "coap_session_new_token".}
else:
  static :
    hint("Declaration of " & "coap_session_new_token" &
        " already exists, not redeclaring")
when not declared(blockbuildbody):
  proc blockbuildbody*(bodydata: ptr binaryt_1023410757; length: csize_t;
                       data: ptr uint8; offset: csize_t; total: csize_t): ptr binaryt_1023410757 {.
      cdecl, importc: "coap_block_build_body".}
else:
  static :
    hint("Declaration of " & "coap_block_build_body" &
        " already exists, not redeclaring")
when not declared(Coapattrflagsreleasename):
  when 1 is static:
    const
      Coapattrflagsreleasename* = 1 ## Generated based on /usr/include/coap3/resource.h:48:9
  else:
    let Coapattrflagsreleasename* = 1 ## Generated based on /usr/include/coap3/resource.h:48:9
else:
  static :
    hint("Declaration of " & "COAP_ATTR_FLAGS_RELEASE_NAME" &
        " already exists, not redeclaring")
when not declared(prnginit):
  proc prnginit*(seed: cuint): void {.cdecl, importc: "coap_prng_init".}
else:
  static :
    hint("Declaration of " & "coap_prng_init" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsenmlcbor):
  when 112 is static:
    const
      Coapmediatypeapplicationsenmlcbor* = 112 ## Generated based on /usr/include/coap3/pdu.h:213:9
  else:
    let Coapmediatypeapplicationsenmlcbor* = 112 ## Generated based on /usr/include/coap3/pdu.h:213:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENML_CBOR" &
        " already exists, not redeclaring")
when not declared(Coapblockuselibcoap):
  when 1 is static:
    const
      Coapblockuselibcoap* = 1 ## Generated based on /usr/include/coap3/block.h:41:9
  else:
    let Coapblockuselibcoap* = 1 ## Generated based on /usr/include/coap3/block.h:41:9
else:
  static :
    hint("Declaration of " & "COAP_BLOCK_USE_LIBCOAP" &
        " already exists, not redeclaring")
when not declared(deletebinary):
  proc deletebinary*(binary: ptr binaryt_1023410757): void {.cdecl,
      importc: "coap_delete_binary".}
else:
  static :
    hint("Declaration of " & "coap_delete_binary" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationrdfxml):
  when 43 is static:
    const
      Coapmediatypeapplicationrdfxml* = 43 ## Generated based on /usr/include/coap3/pdu.h:193:9
  else:
    let Coapmediatypeapplicationrdfxml* = 43 ## Generated based on /usr/include/coap3/pdu.h:193:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_RDF_XML" &
        " already exists, not redeclaring")
when not declared(showpdu):
  proc showpdu*(level: logt_1023410781; pdu: ptr pdut_1023410619): void {.cdecl,
      importc: "coap_show_pdu".}
else:
  static :
    hint("Declaration of " & "coap_show_pdu" &
        " already exists, not redeclaring")
when not declared(Coapeventpartialblock):
  when 12289 is static:
    const
      Coapeventpartialblock* = 12289 ## Generated based on /usr/include/coap3/coap_event.h:54:9
  else:
    let Coapeventpartialblock* = 12289 ## Generated based on /usr/include/coap3/coap_event.h:54:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_PARTIAL_BLOCK" &
        " already exists, not redeclaring")
when not declared(Coapinvalidmid):
  when -1 is static:
    const
      Coapinvalidmid* = -1   ## Generated based on /usr/include/coap3/pdu.h:234:9
  else:
    let Coapinvalidmid* = -1 ## Generated based on /usr/include/coap3/pdu.h:234:9
else:
  static :
    hint("Declaration of " & "COAP_INVALID_MID" &
        " already exists, not redeclaring")
when not declared(optionfilterget):
  proc optionfilterget*(filter: ptr optfiltert_1023410595; number: optionnumt_1023410540): cint {.
      cdecl, importc: "coap_option_filter_get".}
else:
  static :
    hint("Declaration of " & "coap_option_filter_get" &
        " already exists, not redeclaring")
when not declared(Coapeventdtlsclosed):
  when 0 is static:
    const
      Coapeventdtlsclosed* = 0 ## Generated based on /usr/include/coap3/coap_event.h:32:9
  else:
    let Coapeventdtlsclosed* = 0 ## Generated based on /usr/include/coap3/coap_event.h:32:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_DTLS_CLOSED" &
        " already exists, not redeclaring")
when not declared(registerpinghandler):
  proc registerpinghandler*(context: ptr contextt_1023410526;
                            handler: pinghandlert_1023410641): void {.cdecl,
      importc: "coap_register_ping_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_ping_handler" &
        " already exists, not redeclaring")
when not declared(sessiongetaddrremote):
  proc sessiongetaddrremote*(session: ptr sessiont_1023410554): ptr addresst_1023410675 {.
      cdecl, importc: "coap_session_get_addr_remote".}
else:
  static :
    hint("Declaration of " & "coap_session_get_addr_remote" &
        " already exists, not redeclaring")
when not declared(Coapoptionproxyuri):
  when 35 is static:
    const
      Coapoptionproxyuri* = 35 ## Generated based on /usr/include/coap3/pdu.h:127:9
  else:
    let Coapoptionproxyuri* = 35 ## Generated based on /usr/include/coap3/pdu.h:127:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_PROXY_URI" &
        " already exists, not redeclaring")
when not declared(Coapoptionsize2):
  when 28 is static:
    const
      Coapoptionsize2* = 28  ## Generated based on /usr/include/coap3/pdu.h:126:9
  else:
    let Coapoptionsize2* = 28 ## Generated based on /usr/include/coap3/pdu.h:126:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_SIZE2" &
        " already exists, not redeclaring")
when not declared(adddatalargeresponse):
  proc adddatalargeresponse*(resource: ptr resourcet_1023410597;
                             session: ptr sessiont_1023410554;
                             request: ptr pdut_1023410619; response: ptr pdut_1023410619;
                             query: ptr stringt_1023410593; mediatype: uint16;
                             maxage: cint; etag: uint64; length: csize_t;
                             data: ptr uint8; releasefunc: releaselargedatat_1023410584;
                             appptr: pointer): cint {.cdecl,
      importc: "coap_add_data_large_response".}
else:
  static :
    hint("Declaration of " & "coap_add_data_large_response" &
        " already exists, not redeclaring")
when not declared(ioprepareio):
  proc ioprepareio*(ctx: ptr contextt_1023410526;
                    sockets: ptr UncheckedArray[ptr sockett_1023410697];
                    maxsockets: cuint; numsockets: ptr cuint; now: tickt_1023410685): cuint {.
      cdecl, importc: "coap_io_prepare_io".}
else:
  static :
    hint("Declaration of " & "coap_io_prepare_io" &
        " already exists, not redeclaring")
when not declared(addresource):
  proc addresource*(context: ptr contextt_1023410526; resource: ptr resourcet_1023410597): void {.
      cdecl, importc: "coap_add_resource".}
else:
  static :
    hint("Declaration of " & "coap_add_resource" &
        " already exists, not redeclaring")
when not declared(cacheignoreoptions):
  proc cacheignoreoptions*(context: ptr contextt_1023410526;
                           options: ptr uint16; count: csize_t): cint {.cdecl,
      importc: "coap_cache_ignore_options".}
else:
  static :
    hint("Declaration of " & "coap_cache_ignore_options" &
        " already exists, not redeclaring")
when not declared(pdusetcode):
  proc pdusetcode*(pdu: ptr pdut_1023410619; code: pducodet_1023410727): void {.
      cdecl, importc: "coap_pdu_set_code".}
else:
  static :
    hint("Declaration of " & "coap_pdu_set_code" &
        " already exists, not redeclaring")
when not declared(resourcesetdirty):
  proc resourcesetdirty*(r: ptr resourcet_1023410597; query: ptr stringt_1023410593): cint {.
      cdecl, importc: "coap_resource_set_dirty".}
else:
  static :
    hint("Declaration of " & "coap_resource_set_dirty" &
        " already exists, not redeclaring")
when not declared(tickstort):
  proc tickstort*(t: tickt_1023410685): timet_1023410631 {.cdecl,
      importc: "coap_ticks_to_rt".}
else:
  static :
    hint("Declaration of " & "coap_ticks_to_rt" &
        " already exists, not redeclaring")
when not declared(decodevarbytes8):
  proc decodevarbytes8*(buf: ptr uint8; length: csize_t): uint64 {.cdecl,
      importc: "coap_decode_var_bytes8".}
else:
  static :
    hint("Declaration of " & "coap_decode_var_bytes8" &
        " already exists, not redeclaring")
when not declared(newcacheentry):
  proc newcacheentry*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619;
                      recordpdu: cacherecordpdut_1023410767;
                      sessionbased: cachesessionbasedt_1023410769;
                      idletime: cuint): ptr cacheentryt_1023410667 {.cdecl,
      importc: "coap_new_cache_entry".}
else:
  static :
    hint("Declaration of " & "coap_new_cache_entry" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationjson):
  when 50 is static:
    const
      Coapmediatypeapplicationjson* = 50 ## Generated based on /usr/include/coap3/pdu.h:195:9
  else:
    let Coapmediatypeapplicationjson* = 50 ## Generated based on /usr/include/coap3/pdu.h:195:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_JSON" &
        " already exists, not redeclaring")
when not declared(newstrconst):
  proc newstrconst*(data: ptr uint8; size: csize_t): ptr strconstt_1023410536 {.
      cdecl, importc: "coap_new_str_const".}
else:
  static :
    hint("Declaration of " & "coap_new_str_const" &
        " already exists, not redeclaring")
when not declared(Coapdtlspkisetupversion):
  when 1 is static:
    const
      Coapdtlspkisetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:239:9
  else:
    let Coapdtlspkisetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:239:9
else:
  static :
    hint("Declaration of " & "COAP_DTLS_PKI_SETUP_VERSION" &
        " already exists, not redeclaring")
when not declared(sessiongetifindex):
  proc sessiongetifindex*(session: ptr sessiont_1023410554): cint {.cdecl,
      importc: "coap_session_get_ifindex".}
else:
  static :
    hint("Declaration of " & "coap_session_get_ifindex" &
        " already exists, not redeclaring")
when not declared(sessiongetmaxretransmit):
  proc sessiongetmaxretransmit*(session: ptr sessiont_1023410554): cuint {.
      cdecl, importc: "coap_session_get_max_retransmit".}
else:
  static :
    hint("Declaration of " & "coap_session_get_max_retransmit" &
        " already exists, not redeclaring")
when not declared(seteventhandler):
  proc seteventhandler*(context: ptr contextt_1023410526; hnd: eventhandlert_1023410753): void {.
      cdecl, importc: "coap_set_event_handler".}
else:
  static :
    hint("Declaration of " & "coap_set_event_handler" &
        " already exists, not redeclaring")
when not declared(setshowpduoutput):
  proc setshowpduoutput*(usefprintf: cint): void {.cdecl,
      importc: "coap_set_show_pdu_output".}
else:
  static :
    hint("Declaration of " & "coap_set_show_pdu_output" &
        " already exists, not redeclaring")
when not declared(optencodesize):
  proc optencodesize*(delta: uint16; length: csize_t): csize_t {.cdecl,
      importc: "coap_opt_encode_size".}
else:
  static :
    hint("Declaration of " & "coap_opt_encode_size" &
        " already exists, not redeclaring")
when not declared(sessionsetacktimeout):
  proc sessionsetacktimeout*(session: ptr sessiont_1023410554;
                             value: fixedpointt_1023410679): void {.cdecl,
      importc: "coap_session_set_ack_timeout".}
else:
  static :
    hint("Declaration of " & "coap_session_set_ack_timeout" &
        " already exists, not redeclaring")
when not declared(contextsetmaxidlesessions):
  proc contextsetmaxidlesessions*(context: ptr contextt_1023410526;
                                  maxidlesessions: cuint): void {.cdecl,
      importc: "coap_context_set_max_idle_sessions".}
else:
  static :
    hint("Declaration of " & "coap_context_set_max_idle_sessions" &
        " already exists, not redeclaring")
when not declared(getblock):
  proc getblock*(pdu: ptr pdut_1023410619; number: optionnumt_1023410540;
                 blockarg: ptr blockt_1023410516): cint {.cdecl,
      importc: "coap_get_block".}
else:
  static :
    hint("Declaration of " & "coap_get_block" &
        " already exists, not redeclaring")
when not declared(Coapresourceflagsnotifycon):
  when 2 is static:
    const
      Coapresourceflagsnotifycon* = 2 ## Generated based on /usr/include/coap3/resource.h:65:9
  else:
    let Coapresourceflagsnotifycon* = 2 ## Generated based on /usr/include/coap3/resource.h:65:9
else:
  static :
    hint("Declaration of " & "COAP_RESOURCE_FLAGS_NOTIFY_CON" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcoseencrypt0):
  when 16 is static:
    const
      Coapmediatypeapplicationcoseencrypt0* = 16 ## Generated based on /usr/include/coap3/pdu.h:203:9
  else:
    let Coapmediatypeapplicationcoseencrypt0* = 16 ## Generated based on /usr/include/coap3/pdu.h:203:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_ENCRYPT0" &
        " already exists, not redeclaring")
when not declared(newclientsessionpsk2):
  proc newclientsessionpsk2*(ctx: ptr contextt_1023410526;
                             localif: ptr addresst_1023410675;
                             server: ptr addresst_1023410675; proto: protot_1023410542;
                             setupdata: ptr dtlscpskt_1023410550): ptr sessiont_1023410554 {.
      cdecl, importc: "coap_new_client_session_psk2".}
else:
  static :
    hint("Declaration of " & "coap_new_client_session_psk2" &
        " already exists, not redeclaring")
when not declared(Coapoptionhoplimit):
  when 16 is static:
    const
      Coapoptionhoplimit* = 16 ## Generated based on /usr/include/coap3/pdu.h:121:9
  else:
    let Coapoptionhoplimit* = 16 ## Generated based on /usr/include/coap3/pdu.h:121:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_HOP_LIMIT" &
        " already exists, not redeclaring")
when not declared(Coapoptionifnonematch):
  when 5 is static:
    const
      Coapoptionifnonematch* = 5 ## Generated based on /usr/include/coap3/pdu.h:110:9
  else:
    let Coapoptionifnonematch* = 5 ## Generated based on /usr/include/coap3/pdu.h:110:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_IF_NONE_MATCH" &
        " already exists, not redeclaring")
when not declared(contextgetcsmtimeout):
  proc contextgetcsmtimeout*(context: ptr contextt_1023410526): cuint {.cdecl,
      importc: "coap_context_get_csm_timeout".}
else:
  static :
    hint("Declaration of " & "coap_context_get_csm_timeout" &
        " already exists, not redeclaring")
when not declared(Coapeventtcpclosed):
  when 4098 is static:
    const
      Coapeventtcpclosed* = 4098 ## Generated based on /usr/include/coap3/coap_event.h:41:9
  else:
    let Coapeventtcpclosed* = 4098 ## Generated based on /usr/include/coap3/coap_event.h:41:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_TCP_CLOSED" &
        " already exists, not redeclaring")
when not declared(insertoptlist):
  proc insertoptlist*(optlistchain: ptr ptr optlistt_1023410665;
                      optlist: ptr optlistt_1023410665): cint {.cdecl,
      importc: "coap_insert_optlist".}
else:
  static :
    hint("Declaration of " & "coap_insert_optlist" &
        " already exists, not redeclaring")
when not declared(closesocket):
  when close is typedesc:
    type
      closesocket* = close   ## Generated based on /usr/include/coap3/coap_io.h:43:9
  else:
    when close is static:
      const
        closesocket* = close ## Generated based on /usr/include/coap3/coap_io.h:43:9
    else:
      let closesocket* = close ## Generated based on /usr/include/coap3/coap_io.h:43:9
else:
  static :
    hint("Declaration of " & "coap_closesocket" &
        " already exists, not redeclaring")
when not declared(splitquery):
  proc splitquery*(s: ptr uint8; length: csize_t; buf: ptr cuchar;
                   buflen: ptr csize_t): cint {.cdecl,
      importc: "coap_split_query".}
else:
  static :
    hint("Declaration of " & "coap_split_query" &
        " already exists, not redeclaring")
when not declared(registerresponsehandler):
  proc registerresponsehandler*(context: ptr contextt_1023410526;
                                handler: responsehandlert_1023410669): void {.
      cdecl, importc: "coap_register_response_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_response_handler" &
        " already exists, not redeclaring")
when not declared(contextsetblockmode):
  proc contextsetblockmode*(context: ptr contextt_1023410526; blockmode: uint8): void {.
      cdecl, importc: "coap_context_set_block_mode".}
else:
  static :
    hint("Declaration of " & "coap_context_set_block_mode" &
        " already exists, not redeclaring")
when not declared(contextsetkeepalive):
  proc contextsetkeepalive*(context: ptr contextt_1023410526; seconds: cuint): void {.
      cdecl, importc: "coap_context_set_keepalive".}
else:
  static :
    hint("Declaration of " & "coap_context_set_keepalive" &
        " already exists, not redeclaring")
when not declared(asyncsetappdata):
  proc asyncsetappdata*(async: ptr asynct_1023410611; appdata: pointer): void {.
      cdecl, importc: "coap_async_set_app_data".}
else:
  static :
    hint("Declaration of " & "coap_async_set_app_data" &
        " already exists, not redeclaring")
when not declared(pdugettype):
  proc pdugettype*(pdu: ptr pdut_1023410619): pdutypet_1023410548 {.cdecl,
      importc: "coap_pdu_get_type".}
else:
  static :
    hint("Declaration of " & "coap_pdu_get_type" &
        " already exists, not redeclaring")
when not declared(cachesetappdata):
  proc cachesetappdata*(cacheentry: ptr cacheentryt_1023410667; data: pointer;
                        callback: cacheappdatafreecallbackt_1023410719): void {.
      cdecl, importc: "coap_cache_set_app_data".}
else:
  static :
    hint("Declaration of " & "coap_cache_set_app_data" &
        " already exists, not redeclaring")
when not declared(Coapoptionifmatch):
  when 1 is static:
    const
      Coapoptionifmatch* = 1 ## Generated based on /usr/include/coap3/pdu.h:107:9
  else:
    let Coapoptionifmatch* = 1 ## Generated based on /usr/include/coap3/pdu.h:107:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_IF_MATCH" &
        " already exists, not redeclaring")
when not declared(debugsendpacket):
  proc debugsendpacket*(): cint {.cdecl, importc: "coap_debug_send_packet".}
else:
  static :
    hint("Declaration of " & "coap_debug_send_packet" &
        " already exists, not redeclaring")
when not declared(resourcegetuserdata):
  proc resourcegetuserdata*(resource: ptr resourcet_1023410597): pointer {.
      cdecl, importc: "coap_resource_get_userdata".}
else:
  static :
    hint("Declaration of " & "coap_resource_get_userdata" &
        " already exists, not redeclaring")
when not declared(Coapiowait):
  when 0 is static:
    const
      Coapiowait* = 0        ## Generated based on /usr/include/coap3/net.h:534:9
  else:
    let Coapiowait* = 0      ## Generated based on /usr/include/coap3/net.h:534:9
else:
  static :
    hint("Declaration of " & "COAP_IO_WAIT" & " already exists, not redeclaring")
when not declared(Coapdefaulthoplimit):
  when 16 is static:
    const
      Coapdefaulthoplimit* = 16 ## Generated based on /usr/include/coap3/pdu.h:43:9
  else:
    let Coapdefaulthoplimit* = 16 ## Generated based on /usr/include/coap3/pdu.h:43:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_HOP_LIMIT" &
        " already exists, not redeclaring")
when not declared(tickstortus):
  proc tickstortus*(t: tickt_1023410685): uint64 {.cdecl,
      importc: "coap_ticks_to_rt_us".}
else:
  static :
    hint("Declaration of " & "coap_ticks_to_rt_us" &
        " already exists, not redeclaring")
when not declared(Coapdtlscpsksetupversion):
  when 1 is static:
    const
      Coapdtlscpsksetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:333:9
  else:
    let Coapdtlscpsksetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:333:9
else:
  static :
    hint("Declaration of " & "COAP_DTLS_CPSK_SETUP_VERSION" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsenmlexi):
  when 114 is static:
    const
      Coapmediatypeapplicationsenmlexi* = 114 ## Generated based on /usr/include/coap3/pdu.h:215:9
  else:
    let Coapmediatypeapplicationsenmlexi* = 114 ## Generated based on /usr/include/coap3/pdu.h:215:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENML_EXI" &
        " already exists, not redeclaring")
when not declared(registereventhandler):
  proc registereventhandler*(context: ptr contextt_1023410526;
                             hnd: eventhandlert_1023410753): void {.cdecl,
      importc: "coap_register_event_handler".}
else:
  static :
    hint("Declaration of " & "coap_register_event_handler" &
        " already exists, not redeclaring")
when not declared(sessionsendping):
  proc sessionsendping*(session: ptr sessiont_1023410554): midt_1023410532 {.
      cdecl, importc: "coap_session_send_ping".}
else:
  static :
    hint("Declaration of " & "coap_session_send_ping" &
        " already exists, not redeclaring")
when not declared(newcontext):
  proc newcontext*(listenaddr: ptr addresst_1023410675): ptr contextt_1023410526 {.
      cdecl, importc: "coap_new_context".}
else:
  static :
    hint("Declaration of " & "coap_new_context" &
        " already exists, not redeclaring")
when not declared(Coapdtlsspsksetupversion):
  when 1 is static:
    const
      Coapdtlsspsksetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:420:9
  else:
    let Coapdtlsspsksetupversion* = 1 ## Generated based on /usr/include/coap3/coap_dtls.h:420:9
else:
  static :
    hint("Declaration of " & "COAP_DTLS_SPSK_SETUP_VERSION" &
        " already exists, not redeclaring")
when not declared(asyncgetappdata):
  proc asyncgetappdata*(async: ptr asynct_1023410611): pointer {.cdecl,
      importc: "coap_async_get_app_data".}
else:
  static :
    hint("Declaration of " & "coap_async_get_app_data" &
        " already exists, not redeclaring")
when not declared(endpointsetdefaultmtu):
  proc endpointsetdefaultmtu*(endpoint: ptr endpointt_1023410703; mtu: cuint): void {.
      cdecl, importc: "coap_endpoint_set_default_mtu".}
else:
  static :
    hint("Declaration of " & "coap_endpoint_set_default_mtu" &
        " already exists, not redeclaring")
when not declared(optencode):
  proc optencode*(opt: ptr optt_1023410570; n: csize_t; delta: uint16;
                  val: ptr uint8; length: csize_t): csize_t {.cdecl,
      importc: "coap_opt_encode".}
else:
  static :
    hint("Declaration of " & "coap_opt_encode" &
        " already exists, not redeclaring")
when not declared(mcastsethops):
  proc mcastsethops*(session: ptr sessiont_1023410554; hops: csize_t): cint {.
      cdecl, importc: "coap_mcast_set_hops".}
else:
  static :
    hint("Declaration of " & "coap_mcast_set_hops" &
        " already exists, not redeclaring")
when not declared(logimpl):
  proc logimpl*(level: logt_1023410781; format: cstring): void {.cdecl, varargs,
      importc: "coap_log_impl".}
else:
  static :
    hint("Declaration of " & "coap_log_impl" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeany):
  when 255 is static:
    const
      Coapmediatypeany* = 255 ## Generated based on /usr/include/coap3/pdu.h:225:9
  else:
    let Coapmediatypeany* = 255 ## Generated based on /usr/include/coap3/pdu.h:225:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_ANY" &
        " already exists, not redeclaring")
when not declared(sessionstr):
  proc sessionstr*(session: ptr sessiont_1023410554): cstring {.cdecl,
      importc: "coap_session_str".}
else:
  static :
    hint("Declaration of " & "coap_session_str" &
        " already exists, not redeclaring")
when not declared(Coapresourcechecktime):
  when 2 is static:
    const
      Coapresourcechecktime* = 2 ## Generated based on /usr/include/coap3/resource.h:22:9
  else:
    let Coapresourcechecktime* = 2 ## Generated based on /usr/include/coap3/resource.h:22:9
else:
  static :
    hint("Declaration of " & "COAP_RESOURCE_CHECK_TIME" &
        " already exists, not redeclaring")
when not declared(resourcesetmode):
  proc resourcesetmode*(resource: ptr resourcet_1023410597; mode: cint): void {.
      cdecl, importc: "coap_resource_set_mode".}
else:
  static :
    hint("Declaration of " & "coap_resource_set_mode" &
        " already exists, not redeclaring")
when not declared(addressequals):
  proc addressequals*(a: ptr addresst_1023410675; b: ptr addresst_1023410675): cint {.
      cdecl, importc: "coap_address_equals".}
else:
  static :
    hint("Declaration of " & "coap_address_equals" &
        " already exists, not redeclaring")
when not declared(Coapoptall):
  when Null is typedesc:
    type
      Coapoptall* = Null     ## Generated based on /usr/include/coap3/option.h:107:9
  else:
    when Null is static:
      const
        Coapoptall* = Null   ## Generated based on /usr/include/coap3/option.h:107:9
    else:
      let Coapoptall* = Null ## Generated based on /usr/include/coap3/option.h:107:9
else:
  static :
    hint("Declaration of " & "COAP_OPT_ALL" & " already exists, not redeclaring")
when not declared(deletecachekey):
  proc deletecachekey*(cachekey: ptr cachekeyt_1023410645): void {.cdecl,
      importc: "coap_delete_cache_key".}
else:
  static :
    hint("Declaration of " & "coap_delete_cache_key" &
        " already exists, not redeclaring")
when not declared(Coapoptionuriquery):
  when 15 is static:
    const
      Coapoptionuriquery* = 15 ## Generated based on /usr/include/coap3/pdu.h:120:9
  else:
    let Coapoptionuriquery* = 15 ## Generated based on /usr/include/coap3/pdu.h:120:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_URI_QUERY" &
        " already exists, not redeclaring")
when not declared(sendmessagetype):
  proc sendmessagetype*(session: ptr sessiont_1023410554; request: ptr pdut_1023410619;
                        typearg: pdutypet_1023410548): midt_1023410532 {.cdecl,
      importc: "coap_send_message_type".}
else:
  static :
    hint("Declaration of " & "coap_send_message_type" &
        " already exists, not redeclaring")
when not declared(deletepdu):
  proc deletepdu*(pdu: ptr pdut_1023410619): void {.cdecl,
      importc: "coap_delete_pdu".}
else:
  static :
    hint("Declaration of " & "coap_delete_pdu" &
        " already exists, not redeclaring")
when not declared(freetype):
  proc freetype*(typearg: memorytagt_1023410709; p: pointer): void {.cdecl,
      importc: "coap_free_type".}
else:
  static :
    hint("Declaration of " & "coap_free_type" &
        " already exists, not redeclaring")
when not declared(resourcegeturipath):
  proc resourcegeturipath*(resource: ptr resourcet_1023410597): ptr strconstt_1023410536 {.
      cdecl, importc: "coap_resource_get_uri_path".}
else:
  static :
    hint("Declaration of " & "coap_resource_get_uri_path" &
        " already exists, not redeclaring")
when not declared(Coapmaxepollevents):
  when 10 is static:
    const
      Coapmaxepollevents* = 10 ## Generated based on /usr/include/coap3/coap_io.h:33:9
  else:
    let Coapmaxepollevents* = 10 ## Generated based on /usr/include/coap3/coap_io.h:33:9
else:
  static :
    hint("Declaration of " & "COAP_MAX_EPOLL_EVENTS" &
        " already exists, not redeclaring")
when not declared(prng):
  proc prng*(buf: pointer; len: csize_t): cint {.cdecl, importc: "coap_prng".}
else:
  static :
    hint("Declaration of " & "coap_prng" & " already exists, not redeclaring")
when not declared(pduduplicate):
  proc pduduplicate*(oldpdu: ptr pdut_1023410619; session: ptr sessiont_1023410554;
                     tokenlength: csize_t; token: ptr uint8;
                     dropoptions: ptr optfiltert_1023410595): ptr pdut_1023410619 {.
      cdecl, importc: "coap_pdu_duplicate".}
else:
  static :
    hint("Declaration of " & "coap_pdu_duplicate" &
        " already exists, not redeclaring")
when not declared(sendack):
  proc sendack*(session: ptr sessiont_1023410554; request: ptr pdut_1023410619): midt_1023410532 {.
      cdecl, importc: "coap_send_ack".}
else:
  static :
    hint("Declaration of " & "coap_send_ack" &
        " already exists, not redeclaring")
when not declared(showtlsversion):
  proc showtlsversion*(level: logt_1023410781): void {.cdecl,
      importc: "coap_show_tls_version".}
else:
  static :
    hint("Declaration of " & "coap_show_tls_version" &
        " already exists, not redeclaring")
when not declared(sessionrelease):
  proc sessionrelease*(session: ptr sessiont_1023410554): void {.cdecl,
      importc: "coap_session_release".}
else:
  static :
    hint("Declaration of " & "coap_session_release" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationcosekeyset):
  when 102 is static:
    const
      Coapmediatypeapplicationcosekeyset* = 102 ## Generated based on /usr/include/coap3/pdu.h:208:9
  else:
    let Coapmediatypeapplicationcosekeyset* = 102 ## Generated based on /usr/include/coap3/pdu.h:208:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_COSE_KEY_SET" &
        " already exists, not redeclaring")
when not declared(Coapoptionuripath):
  when 11 is static:
    const
      Coapoptionuripath* = 11 ## Generated based on /usr/include/coap3/pdu.h:115:9
  else:
    let Coapoptionuripath* = 11 ## Generated based on /usr/include/coap3/pdu.h:115:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_URI_PATH" &
        " already exists, not redeclaring")
when not declared(sessionreference):
  proc sessionreference*(session: ptr sessiont_1023410554): ptr sessiont_1023410554 {.
      cdecl, importc: "coap_session_reference".}
else:
  static :
    hint("Declaration of " & "coap_session_reference" &
        " already exists, not redeclaring")
when not declared(fls):
  proc fls*(i: cuint): cint {.cdecl, importc: "coap_fls".}
else:
  static :
    hint("Declaration of " & "coap_fls" & " already exists, not redeclaring")
when not declared(attrgetvalue):
  proc attrgetvalue*(attribute: ptr attrt_1023410673): ptr strconstt_1023410536 {.
      cdecl, importc: "coap_attr_get_value".}
else:
  static :
    hint("Declaration of " & "coap_attr_get_value" &
        " already exists, not redeclaring")
when not declared(Coapoptionuriport):
  when 7 is static:
    const
      Coapoptionuriport* = 7 ## Generated based on /usr/include/coap3/pdu.h:112:9
  else:
    let Coapoptionuriport* = 7 ## Generated based on /usr/include/coap3/pdu.h:112:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_URI_PORT" &
        " already exists, not redeclaring")
when not declared(packageversion):
  proc packageversion*(): cstring {.cdecl, importc: "coap_package_version".}
else:
  static :
    hint("Declaration of " & "coap_package_version" &
        " already exists, not redeclaring")
when not declared(freeendpoint):
  proc freeendpoint*(ep: ptr endpointt_1023410703): void {.cdecl,
      importc: "coap_free_endpoint".}
else:
  static :
    hint("Declaration of " & "coap_free_endpoint" &
        " already exists, not redeclaring")
when not declared(sessiongetbypeer):
  proc sessiongetbypeer*(ctx: ptr contextt_1023410526; remoteaddr: ptr addresst_1023410675;
                         ifindex: cint): ptr sessiont_1023410554 {.cdecl,
      importc: "coap_session_get_by_peer".}
else:
  static :
    hint("Declaration of " & "coap_session_get_by_peer" &
        " already exists, not redeclaring")
when not declared(ismcast):
  proc ismcast*(a: ptr addresst_1023410675): cint {.cdecl,
      importc: "coap_is_mcast".}
else:
  static :
    hint("Declaration of " & "coap_is_mcast" &
        " already exists, not redeclaring")
when not declared(Coapeventtcpconnected):
  when 4097 is static:
    const
      Coapeventtcpconnected* = 4097 ## Generated based on /usr/include/coap3/coap_event.h:40:9
  else:
    let Coapeventtcpconnected* = 4097 ## Generated based on /usr/include/coap3/coap_event.h:40:9
else:
  static :
    hint("Declaration of " & "COAP_EVENT_TCP_CONNECTED" &
        " already exists, not redeclaring")
when not declared(Coapmaxopt):
  when 65535 is static:
    const
      Coapmaxopt* = 65535    ## Generated based on /usr/include/coap3/pdu.h:132:9
  else:
    let Coapmaxopt* = 65535  ## Generated based on /usr/include/coap3/pdu.h:132:9
else:
  static :
    hint("Declaration of " & "COAP_MAX_OPT" & " already exists, not redeclaring")
when not declared(pdusetmid):
  proc pdusetmid*(pdu: ptr pdut_1023410619; mid: midt_1023410532): void {.cdecl,
      importc: "coap_pdu_set_mid".}
else:
  static :
    hint("Declaration of " & "coap_pdu_set_mid" &
        " already exists, not redeclaring")
when not declared(asyncsetdelay):
  proc asyncsetdelay*(async: ptr asynct_1023410611; delay: tickt_1023410685): void {.
      cdecl, importc: "coap_async_set_delay".}
else:
  static :
    hint("Declaration of " & "coap_async_set_delay" &
        " already exists, not redeclaring")
when not declared(canexit):
  proc canexit*(context: ptr contextt_1023410526): cint {.cdecl,
      importc: "coap_can_exit".}
else:
  static :
    hint("Declaration of " & "coap_can_exit" &
        " already exists, not redeclaring")
when not declared(Coapmediatypetextplain):
  when 0 is static:
    const
      Coapmediatypetextplain* = 0 ## Generated based on /usr/include/coap3/pdu.h:189:9
  else:
    let Coapmediatypetextplain* = 0 ## Generated based on /usr/include/coap3/pdu.h:189:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_TEXT_PLAIN" &
        " already exists, not redeclaring")
when not declared(Coaprxbuffersize):
  when 1472 is static:
    const
      Coaprxbuffersize* = 1472 ## Generated based on /usr/include/coap3/coap_io.h:24:9
  else:
    let Coaprxbuffersize* = 1472 ## Generated based on /usr/include/coap3/coap_io.h:24:9
else:
  static :
    hint("Declaration of " & "COAP_RXBUFFER_SIZE" &
        " already exists, not redeclaring")
when not declared(memoryinit):
  proc memoryinit*(): void {.cdecl, importc: "coap_memory_init".}
else:
  static :
    hint("Declaration of " & "coap_memory_init" &
        " already exists, not redeclaring")
when not declared(findattr):
  proc findattr*(resource: ptr resourcet_1023410597; name: ptr strconstt_1023410536): ptr attrt_1023410673 {.
      cdecl, importc: "coap_find_attr".}
else:
  static :
    hint("Declaration of " & "coap_find_attr" &
        " already exists, not redeclaring")
when not declared(findasync):
  proc findasync*(session: ptr sessiont_1023410554; token: binconstt_1023410723): ptr asynct_1023410611 {.
      cdecl, importc: "coap_find_async".}
else:
  static :
    hint("Declaration of " & "coap_find_async" &
        " already exists, not redeclaring")
when not declared(sessiongetappdata):
  proc sessiongetappdata*(session: ptr sessiont_1023410554): pointer {.cdecl,
      importc: "coap_session_get_app_data".}
else:
  static :
    hint("Declaration of " & "coap_session_get_app_data" &
        " already exists, not redeclaring")
when not declared(deleteoptlist):
  proc deleteoptlist*(optlistchain: ptr optlistt_1023410665): void {.cdecl,
      importc: "coap_delete_optlist".}
else:
  static :
    hint("Declaration of " & "coap_delete_optlist" &
        " already exists, not redeclaring")
when not declared(dtlsissupported):
  proc dtlsissupported*(): cint {.cdecl, importc: "coap_dtls_is_supported".}
else:
  static :
    hint("Declaration of " & "coap_dtls_is_supported" &
        " already exists, not redeclaring")
when not declared(adddataafter):
  proc adddataafter*(pdu: ptr pdut_1023410619; len: csize_t): ptr uint8 {.cdecl,
      importc: "coap_add_data_after".}
else:
  static :
    hint("Declaration of " & "coap_add_data_after" &
        " already exists, not redeclaring")
when not declared(stringtlsversion):
  proc stringtlsversion*(buffer: cstring; bufsize: csize_t): cstring {.cdecl,
      importc: "coap_string_tls_version".}
else:
  static :
    hint("Declaration of " & "coap_string_tls_version" &
        " already exists, not redeclaring")
when not declared(sessiongetpskkey):
  proc sessiongetpskkey*(session: ptr sessiont_1023410554): ptr binconstt_1023410723 {.
      cdecl, importc: "coap_session_get_psk_key".}
else:
  static :
    hint("Declaration of " & "coap_session_get_psk_key" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationlinkformat):
  when 40 is static:
    const
      Coapmediatypeapplicationlinkformat* = 40 ## Generated based on /usr/include/coap3/pdu.h:190:9
  else:
    let Coapmediatypeapplicationlinkformat* = 40 ## Generated based on /usr/include/coap3/pdu.h:190:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_LINK_FORMAT" &
        " already exists, not redeclaring")
when not declared(Coapdefaultport):
  when 5683 is static:
    const
      Coapdefaultport* = 5683 ## Generated based on /usr/include/coap3/pdu.h:35:9
  else:
    let Coapdefaultport* = 5683 ## Generated based on /usr/include/coap3/pdu.h:35:9
else:
  static :
    hint("Declaration of " & "COAP_DEFAULT_PORT" &
        " already exists, not redeclaring")
when not declared(Coapmediatypeapplicationsensmlxml):
  when 311 is static:
    const
      Coapmediatypeapplicationsensmlxml* = 311 ## Generated based on /usr/include/coap3/pdu.h:218:9
  else:
    let Coapmediatypeapplicationsensmlxml* = 311 ## Generated based on /usr/include/coap3/pdu.h:218:9
else:
  static :
    hint("Declaration of " & "COAP_MEDIATYPE_APPLICATION_SENSML_XML" &
        " already exists, not redeclaring")
when not declared(Coapresourceflagsnotifynon):
  when 0 is static:
    const
      Coapresourceflagsnotifynon* = 0 ## Generated based on /usr/include/coap3/resource.h:59:9
  else:
    let Coapresourceflagsnotifynon* = 0 ## Generated based on /usr/include/coap3/resource.h:59:9
else:
  static :
    hint("Declaration of " & "COAP_RESOURCE_FLAGS_NOTIFY_NON" &
        " already exists, not redeclaring")
when not declared(ioprocesswithfds):
  proc ioprocesswithfds*(ctx: ptr contextt_1023410526; timeoutms: uint32;
                         nfds: cint; readfds: ptr fdset_1023410651;
                         writefds: ptr fdset_1023410651; exceptfds: ptr fdset_1023410651): cint {.
      cdecl, importc: "coap_io_process_with_fds".}
else:
  static :
    hint("Declaration of " & "coap_io_process_with_fds" &
        " already exists, not redeclaring")
when not declared(resourceunknowninit):
  proc resourceunknowninit*(puthandler: methodhandlert_1023410578): ptr resourcet_1023410597 {.
      cdecl, importc: "coap_resource_unknown_init".}
else:
  static :
    hint("Declaration of " & "coap_resource_unknown_init" &
        " already exists, not redeclaring")
when not declared(Coaprunnonblock):
  when Coaprunnonblockdeprecatedusecoapionowait is typedesc:
    type
      Coaprunnonblock* = Coaprunnonblockdeprecatedusecoapionowait ## Generated based on /usr/include/coap3/net.h:776:9
  else:
    when Coaprunnonblockdeprecatedusecoapionowait is static:
      const
        Coaprunnonblock* = Coaprunnonblockdeprecatedusecoapionowait ## Generated based on /usr/include/coap3/net.h:776:9
    else:
      let Coaprunnonblock* = Coaprunnonblockdeprecatedusecoapionowait ## Generated based on /usr/include/coap3/net.h:776:9
else:
  static :
    hint("Declaration of " & "COAP_RUN_NONBLOCK" &
        " already exists, not redeclaring")
when not declared(newclientsessionpsk):
  proc newclientsessionpsk*(ctx: ptr contextt_1023410526; localif: ptr addresst_1023410675;
                            server: ptr addresst_1023410675; proto: protot_1023410542;
                            identity: cstring; key: ptr uint8; keylen: cuint): ptr sessiont_1023410554 {.
      cdecl, importc: "coap_new_client_session_psk".}
else:
  static :
    hint("Declaration of " & "coap_new_client_session_psk" &
        " already exists, not redeclaring")
when not declared(registeroption):
  proc registeroption*(ctx: ptr contextt_1023410526; typearg: uint16): void {.
      cdecl, importc: "coap_register_option".}
else:
  static :
    hint("Declaration of " & "coap_register_option" &
        " already exists, not redeclaring")
when not declared(sessioninittoken):
  proc sessioninittoken*(session: ptr sessiont_1023410554; length: csize_t;
                         token: ptr uint8): void {.cdecl,
      importc: "coap_session_init_token".}
else:
  static :
    hint("Declaration of " & "coap_session_init_token" &
        " already exists, not redeclaring")
when not declared(Coapoptionlocationquery):
  when 20 is static:
    const
      Coapoptionlocationquery* = 20 ## Generated based on /usr/include/coap3/pdu.h:123:9
  else:
    let Coapoptionlocationquery* = 20 ## Generated based on /usr/include/coap3/pdu.h:123:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_LOCATION_QUERY" &
        " already exists, not redeclaring")
when not declared(Coapmaxblockszx):
  when 6 is static:
    const
      Coapmaxblockszx* = 6   ## Generated based on /usr/include/coap3/block.h:29:9
  else:
    let Coapmaxblockszx* = 6 ## Generated based on /usr/include/coap3/block.h:29:9
else:
  static :
    hint("Declaration of " & "COAP_MAX_BLOCK_SZX" &
        " already exists, not redeclaring")
when not declared(adddatalargerequest):
  proc adddatalargerequest*(session: ptr sessiont_1023410554; pdu: ptr pdut_1023410619;
                            length: csize_t; data: ptr uint8;
                            releasefunc: releaselargedatat_1023410584;
                            appptr: pointer): cint {.cdecl,
      importc: "coap_add_data_large_request".}
else:
  static :
    hint("Declaration of " & "coap_add_data_large_request" &
        " already exists, not redeclaring")
when not declared(Coapresourceflagsnotifynonalways):
  when 4 is static:
    const
      Coapresourceflagsnotifynonalways* = 4 ## Generated based on /usr/include/coap3/resource.h:75:9
  else:
    let Coapresourceflagsnotifynonalways* = 4 ## Generated based on /usr/include/coap3/resource.h:75:9
else:
  static :
    hint("Declaration of " & "COAP_RESOURCE_FLAGS_NOTIFY_NON_ALWAYS" &
        " already exists, not redeclaring")
when not declared(Coapoptionetag):
  when 4 is static:
    const
      Coapoptionetag* = 4    ## Generated based on /usr/include/coap3/pdu.h:109:9
  else:
    let Coapoptionetag* = 4  ## Generated based on /usr/include/coap3/pdu.h:109:9
else:
  static :
    hint("Declaration of " & "COAP_OPTION_ETAG" &
        " already exists, not redeclaring")