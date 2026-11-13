COMMENT = X11 pixmap library
VERSION = 3.5.20
REVISION = 0
CATEGORIES = libs
PKGNAME = libXpm
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = libXpm-${VERSION}.tar.xz
LINK = https://www.x.org/releases/individual/lib/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libXpm-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ac_cv_search_gettext=no ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--disable-open-zfile)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
