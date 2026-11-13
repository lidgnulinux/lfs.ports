COMMENT = X.org header files with bitmaps
VERSION = 1.1.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = xbitmaps
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = xbitmaps-1.1.4.tar.xz
LINK = https://www.x.org/releases/individual/data/xbitmaps-1.1.4.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xbitmaps-1.1.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
