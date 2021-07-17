
CC ?= gcc
OUT ?= build

RMF = rm -f
RMRF ?= rm -rf

all: clean build

CFLAGS := -Wall
build:
	$(CC)  $(CFLAGS)  -g -o   bank login.c bank_management_syste.c  PointOperations.c
# gcc -include file2.c file1.c

# -Wall ：compile 中如果有處理會顯示出來


clean:
	$(RMRF) bank
help:
	@echo "make help                show this message"
	@echo "make build               compile"
	@echo "make install             install on the system"
	@echo "make clean               clean up the mess"
	@echo "make install-headers     install headers"
	@echo "make lib                 build a static library"
	@echo "make install-lib         install the static library"
	@echo "make slib                build a shared library"
	@echo "make install-slib        install the shared library"
	@echo "make unit_test           (obsolete - unit tests use cmake now)"
	@echo ""
	@echo " Make Options"
	@echo "   WITH_LUA=1            build with Lua support; include Lua as static library"
	@echo "   WITH_LUA_SHARED=1     build with Lua support; use dynamic linking to liblua5.2.so"
	@echo "   WITH_LUA_VERSION=502  build with Lua 5.2.x (501 for Lua 5.1.x to 503 for 5.3.x)"
	@echo "   WITH_DUKTAPE=1        build with Duktape support; include as static library"
	@echo "   WITH_DUKTAPE_SHARED=1 build with Duktape support; use libduktape1.3.so"
	@echo "   WITH_DUKTAPE_VERSION=108 build with Duktape 1.8.x"
	@echo "   WITH_DEBUG=1          build with GDB debug support"
	@echo "   WITH_IPV6=1           with IPV6 support"
	@echo "   WITH_WEBSOCKET=1      build with web socket support"
	@echo "   WITH_SERVER_STATS=1   build includes support for server statistics"
	@echo "   WITH_ZLIB=1           build includes support for on-the-fly compression using zlib"
	@echo "   WITH_CPP=1            build library with c++ classes"
	@echo "   WITH_EXPERIMENTAL=1   build with experimental features"
	@echo "   WITH_DAEMONIZE=1      build with daemonize."
	@echo "   WITH_MBEDTLS=1        build with mbedTLS support."
	@echo "   WITH_OPENSSL_API_1_0=1  build with OpenSSL 1.0.x support."
	@echo "   WITH_OPENSSL_API_1_1=1  build with OpenSSL 1.1.x support."
	@echo "   NO_SSL=1              build without SSL support. Build will not need libcrypto/libssl."
	@echo "   NO_CGI=1              build without CGI support."
	@echo "   NO_CACHING=1          disable caching. Send no-cache/no-store headers."
	@echo "   PID_FILE=/path        PID file path of daemon."
	@echo "   CONFIG_FILE=file      use 'file' as the config file"
	@echo "   CONFIG_FILE2=file     use 'file' as the backup config file"
	@echo "   DOCUMENT_ROOT=/path   document root override when installing"
	@echo "   PORTS=8080            listening ports override when installing"
	@echo "   SSL_LIB=libssl.so.0   use versioned SSL library"
	@echo "   CRYPTO_LIB=libcrypto.so.0 system versioned CRYPTO library"
	@echo "   PREFIX=/usr/local     sets the install directory"
	@echo "   COPT='-DNO_SSL'       method to insert compile flags"
	@echo "   LOPT='-lxxx'          method to link xxx library"
	@echo ""
	@echo " Compile Flags"
	@echo "   NDEBUG                strip off all debug code"
	@echo "   DEBUG                 build debug version (very noisy)"
	@echo "   NO_CGI                disable CGI support"
	@echo "   NO_SSL                disable SSL functionality"
	@echo "   NO_SSL_DL             link against system libssl library"
	@echo "   NO_FILES              do not serve files from a directory"
	@echo "   NO_CACHING            disable caching (useful for systems without timegm())"
	@echo ""
	@echo ""