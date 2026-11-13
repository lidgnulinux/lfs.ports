COMMENT = Window information utility for X
VERSION = 1.1.6
REVISION = 0
CATEGORIES = xapps
PKGNAME = xwininfo
HOMEPAGE = https://cgit.freedesktop.org/xorg/app/xwininfo
ARCHIVE = xwininfo-1.1.6.tar.xz
LINK = https://www.x.org/releases/individual/app/xwininfo-1.1.6.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xwininfo-1.1.6
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
