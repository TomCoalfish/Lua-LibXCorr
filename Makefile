GCC=gcc
INSTALL=/usr/bin/install
LDCONFIG=/sbin/ldconfig

lib:
	$(GCC) -O2 -march=native -mavx2 -fPIC -std=c99 -shared -o libxcorr.so src/xcorr.c

install:
	$(INSTALL) include/xcorr.h /usr/local/include/
	$(INSTALL) libxcorr.so /usr/local/lib/
	$(LDCONFIG)

all: lib install
