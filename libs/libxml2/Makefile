COMMENT = XML parsing library, version 2
VERSION = 2.14.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libxml2
HOMEPAGE = https://gitlab.gnome.org/GNOME/libxml2
ARCHIVE = libxml2-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/libxml2/2.14/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libxml2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--enable-static=yes \
	--enable-shared=yes \
	--with-python=/usr/bin/python3 \
	--with-history \
	--without-icu \
	--with-lzma \
	--with-iso8859x \
	--with-legacy) 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
