COMMENT = Property displayer for X
VERSION = 1.2.8
REVISION = 0
CATEGORIES = tool
PKGNAME = xprop
HOMEPAGE = https://cgit.freedesktop.org/xorg/app/xprop
ARCHIVE = xprop-1.2.8.tar.xz
LINK = https://www.x.org/archive/individual/app/xprop-1.2.8.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xprop-1.2.8
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
