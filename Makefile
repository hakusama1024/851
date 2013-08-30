include Make.defines

PROGS =	 client server 

OPTIONS = -DUNIX  -DANSI


COBJECTS =	DieWithMessage.o AddressUtility.o
CSOURCES =	DieWithMessage.c  AddressUtility.c

CPLUSOBJECTS = 

COMMONSOURCES =

CPLUSSOURCES =

all:	${PROGS}


client:		UDPEchoClient.o $(CPLUSOBJECTS) $(COBJECTS) $(LIBS) $(COMMONSOURCES) $(SOURCES)
		${CC} ${LINKOPTIONS}  $@ UDPEchoClient.o $(CPLUSOBJECTS) $(COBJECTS) $(LIBS) $(LINKFLAGS)


server:		UDPEchoServer.o $(CPLUSOBJECTS) $(COBJECTS)
		${CC} ${LINKOPTIONS} $@ UDPEchoServer.o $(CPLUSOBJECTS) $(COBJECTS) $(LIBS) $(LINKFLAGS)



.cc.o:	$(HEADERS)
	$(CPLUS) $(CPLUSFLAGS) $(OPTIONS) $<

.c.o:	$(HEADERS)
	$(CC) $(CFLAGS) $(OPTIONS) $<



backup:
	rm -f newUDPEcho.tar
	rm -f newUDPEcho.tar.gz
	tar -cf newUDPEcho.tar *
	gzip -f newUDPEcho.tar

clean:
		rm -f ${PROGS} ${CLEANFILES}

depend:
		makedepend UDPEchoClient.c UDPEchoServer.c $(CFLAGS) $(HEADERS) $(SOURCES) $(COMMONSOURCES) $(CSOURCES)
#		mkdep $(CFLAGS) $(HEADERS) $(SOURCES) $(COMMONSOURCES) $(CSOURCES)

# DO NOT DELETE

UDPEchoClient.o: /usr/include/stdio.h /usr/include/features.h
UDPEchoClient.o: /usr/include/bits/predefs.h /usr/include/sys/cdefs.h
UDPEchoClient.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
UDPEchoClient.o: /usr/include/gnu/stubs-64.h /usr/include/bits/types.h
UDPEchoClient.o: /usr/include/bits/typesizes.h /usr/include/libio.h
UDPEchoClient.o: /usr/include/_G_config.h /usr/include/wchar.h
UDPEchoClient.o: /usr/include/bits/wchar.h /usr/include/xlocale.h
UDPEchoClient.o: /usr/include/bits/stdio_lim.h
UDPEchoClient.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
UDPEchoClient.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
UDPEchoClient.o: /usr/include/endian.h /usr/include/bits/endian.h
UDPEchoClient.o: /usr/include/bits/byteswap.h /usr/include/sys/types.h
UDPEchoClient.o: /usr/include/time.h /usr/include/sys/select.h
UDPEchoClient.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
UDPEchoClient.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
UDPEchoClient.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
UDPEchoClient.o: /usr/include/string.h /usr/include/unistd.h
UDPEchoClient.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
UDPEchoClient.o: /usr/include/getopt.h /usr/include/ctype.h
UDPEchoClient.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
UDPEchoClient.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
UDPEchoClient.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
UDPEchoClient.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
UDPEchoClient.o: /usr/include/asm-generic/sockios.h /usr/include/netdb.h
UDPEchoClient.o: /usr/include/netinet/in.h /usr/include/stdint.h
UDPEchoClient.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
UDPEchoClient.o: /usr/include/bits/netdb.h Practical.h
UDPEchoServer.o: /usr/include/stdlib.h /usr/include/features.h
UDPEchoServer.o: /usr/include/bits/predefs.h /usr/include/sys/cdefs.h
UDPEchoServer.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
UDPEchoServer.o: /usr/include/gnu/stubs-64.h /usr/include/bits/waitflags.h
UDPEchoServer.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
UDPEchoServer.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
UDPEchoServer.o: /usr/include/sys/types.h /usr/include/bits/types.h
UDPEchoServer.o: /usr/include/bits/typesizes.h /usr/include/time.h
UDPEchoServer.o: /usr/include/sys/select.h /usr/include/bits/select.h
UDPEchoServer.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
UDPEchoServer.o: /usr/include/sys/sysmacros.h
UDPEchoServer.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
UDPEchoServer.o: /usr/include/string.h /usr/include/xlocale.h
UDPEchoServer.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
UDPEchoServer.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
UDPEchoServer.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
UDPEchoServer.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
UDPEchoServer.o: /usr/include/asm-generic/sockios.h /usr/include/netdb.h
UDPEchoServer.o: /usr/include/netinet/in.h /usr/include/stdint.h
UDPEchoServer.o: /usr/include/bits/wchar.h /usr/include/bits/in.h
UDPEchoServer.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
UDPEchoServer.o: Practical.h /usr/include/stdio.h /usr/include/libio.h
UDPEchoServer.o: /usr/include/_G_config.h /usr/include/wchar.h
UDPEchoServer.o: /usr/include/bits/stdio_lim.h
UDPEchoServer.o: /usr/include/bits/sys_errlist.h
DieWithMessage.o: /usr/include/stdio.h /usr/include/features.h
DieWithMessage.o: /usr/include/bits/predefs.h /usr/include/sys/cdefs.h
DieWithMessage.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
DieWithMessage.o: /usr/include/gnu/stubs-64.h /usr/include/bits/types.h
DieWithMessage.o: /usr/include/bits/typesizes.h /usr/include/libio.h
DieWithMessage.o: /usr/include/_G_config.h /usr/include/wchar.h
DieWithMessage.o: /usr/include/bits/wchar.h /usr/include/xlocale.h
DieWithMessage.o: /usr/include/bits/stdio_lim.h
DieWithMessage.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
DieWithMessage.o: /usr/include/bits/waitflags.h
DieWithMessage.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
DieWithMessage.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
DieWithMessage.o: /usr/include/sys/types.h /usr/include/time.h
DieWithMessage.o: /usr/include/sys/select.h /usr/include/bits/select.h
DieWithMessage.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
DieWithMessage.o: /usr/include/sys/sysmacros.h
DieWithMessage.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
AddressUtility.o: /usr/include/stdio.h /usr/include/features.h
AddressUtility.o: /usr/include/bits/predefs.h /usr/include/sys/cdefs.h
AddressUtility.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
AddressUtility.o: /usr/include/gnu/stubs-64.h /usr/include/bits/types.h
AddressUtility.o: /usr/include/bits/typesizes.h /usr/include/libio.h
AddressUtility.o: /usr/include/_G_config.h /usr/include/wchar.h
AddressUtility.o: /usr/include/bits/wchar.h /usr/include/xlocale.h
AddressUtility.o: /usr/include/bits/stdio_lim.h
AddressUtility.o: /usr/include/bits/sys_errlist.h /usr/include/string.h
AddressUtility.o: /usr/include/arpa/inet.h /usr/include/netinet/in.h
AddressUtility.o: /usr/include/stdint.h /usr/include/sys/socket.h
AddressUtility.o: /usr/include/sys/uio.h /usr/include/sys/types.h
AddressUtility.o: /usr/include/time.h /usr/include/endian.h
AddressUtility.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
AddressUtility.o: /usr/include/sys/select.h /usr/include/bits/select.h
AddressUtility.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
AddressUtility.o: /usr/include/sys/sysmacros.h
AddressUtility.o: /usr/include/bits/pthreadtypes.h /usr/include/bits/uio.h
AddressUtility.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
AddressUtility.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
AddressUtility.o: /usr/include/asm/sockios.h
AddressUtility.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
