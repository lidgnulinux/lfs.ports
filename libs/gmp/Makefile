COMMENT = free library for arbitrary precision arithmetic
VERSION = 6.3.0
REVISION = 0
CATEGORIES = libs
PKGNAME = gmp
HOMEPAGE = https://gmplib.org/
ARCHIVE = gmp-6.3.0.tar.xz
LINK = https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gmp-6.3.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-cxx \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
