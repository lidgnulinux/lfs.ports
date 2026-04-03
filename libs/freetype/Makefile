COMMENT = TrueType font rendering library
VERSION = 2.14.3
REVISION = 0
CATEGORIES = libs
PKGNAME = freetype
HOMEPAGE = https://www.freetype.org/
ARCHIVE = freetype-2.14.3.tar.gz
LINK = https://download.savannah.gnu.org/releases/freetype/freetype-2.14.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = freetype-2.14.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-shared \
	--with-bzip2=yes \
	--with-zlib=yes \
	--with-png=yes \
	--enable-freetype-config \
	--build=x86_64-pc-linux-musl)

MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
