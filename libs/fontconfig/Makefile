COMMENT = Library for font configuration.
VERSION = 2.18.3
REVISION = 0
CATEGORIES = libs
PKGNAME = fontconfig
HOMEPAGE = https://www.freedesktop.org/wiki/Software/fontconfig/
ARCHIVE = fontconfig-${VERSION}.tar.xz
LINK = https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = fontconfig-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-shared \
	--disable-docs \
	--disable-nls)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
