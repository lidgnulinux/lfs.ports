COMMENT = C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp
VERSION = 0.98.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libb2
HOMEPAGE = https://blake2.net/
ARCHIVE = libb2-${VERSION}.tar.gz
LINK = https://github.com/BLAKE2/libb2/releases/download/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libb2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--disable-static \
	--enable-fat=yes \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
