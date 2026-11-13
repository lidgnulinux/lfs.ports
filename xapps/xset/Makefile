COMMENT = X.Org xset application
VERSION = 1.2.5
REVISION = 0
CATEGORIES = tool
PKGNAME = xset
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = xset-1.2.5.tar.xz
LINK = https://www.x.org/releases/individual/app/xset-1.2.5.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xset-1.2.5
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
