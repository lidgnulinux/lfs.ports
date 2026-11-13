COMMENT = TrueType font rendering library
VERSION = 2.15.0
REVISION = 0
CATEGORIES = libs
PKGNAME = freetype
HOMEPAGE = https://www.freetype.org/
ARCHIVE = freetype-${VERSION}.tar.xz
LINK = https://download.sourceforge.net/freetype/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = freetype-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-shared \
	--with-bzip2=yes \
	--with-zlib=yes \
	--with-png=yes \
	--enable-freetype-config)

MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
