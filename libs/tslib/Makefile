COMMENT = Touchscreen Access Library
VERSION = 1.24
REVISION = 0
CATEGORIES = libs
PKGNAME = tslib
HOMEPAGE = https://github.com/libts/tslib
ARCHIVE = tslib-${VERSION}.tar.xz
LINK = https://github.com/libts/tslib/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = tslib-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
