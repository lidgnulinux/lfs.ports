COMMENT = Discrete Fourier transform (DFT) library
VERSION = 3.3.11
REVISION = 0
CATEGORIES = libs
PKGNAME = fftw
HOMEPAGE = http://www.fftw.org/
SRCCD = archive
ARCHIVE = fftw-3.3.11.tar.gz
LINK = http://www.fftw.org/fftw-3.3.11.tar.gz
BUILD = custom
BUILDDIR = fftw-${VERSION}

prepare:
	for i in double single long_double; do cp -rv fftw-3.3.11 $$i; done 

_double:
	cd double; ./configure --prefix=/usr    \
		--enable-shared  \
		--disable-static \
		--enable-threads \
		--enable-sse2 \
		--enable-avx \
		--enable-avx2
	make -C double
	make -C double DESTDIR=$(CURDIR)/pkg install

_single:
	cd single; ./configure --prefix=/usr    \
		--enable-shared  \
		--disable-static \
		--enable-threads \
		--enable-sse2 \
		--enable-avx \
		--enable-avx2 \
		--enable-float
	make -C single
	make -C single DESTDIR=$(CURDIR)/pkg install

_long_double:
	cd long_double; ./configure --prefix=/usr    \
		--enable-shared  \
		--disable-static \
		--enable-threads \
		--enable-long-double
	make -C long_double
	make -C long_double DESTDIR=$(CURDIR)/pkg install

custom-build: _double _single _long_double

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
