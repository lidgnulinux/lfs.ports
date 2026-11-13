COMMENT = X.Org xsetroot application
VERSION = 1.1.3
REVISION = 0
CATEGORIES = xapps
PKGNAME = xsetroot
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = xsetroot-1.1.3.tar.xz
LINK = https://www.x.org/releases/individual/app/xsetroot-1.1.3.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xsetroot-1.1.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
