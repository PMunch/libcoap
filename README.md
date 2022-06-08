# libCoAP in Nim

This is a libcoap wrapper for Nim. It uses Futhark to automatically wrap
libcoap 4.3.0, and then builds a nice Nim interface for it. This means that you
don't need to manually manage memory or deal with C library callbacks. Simply
send a message and await the reply with normal async primitives. For a usage
example see my IKEA Home Smart library which this library was built for.
