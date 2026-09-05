COMMENT = XML Parser library written in C
VERSION = 2.8.4
_V = $(shell sed 'y/./_/' <<< ${VERSION})
REVISION = 0
CATEGORIES = libs
PKGNAME = expat
HOMEPAGE = https://libexpat.github.io/
ARCHIVE = expat-${VERSION}.tar.xz 
LINK = https://github.com/libexpat/libexpat/releases/download/R_${_V}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = expat-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
