COMMENT = X server resource database utility
VERSION = 1.2.2
REVISION = 0
CATEGORIES = xapps
PKGNAME = xrdb
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = xrdb-1.2.2.tar.xz
LINK = https://www.x.org/releases/individual/app/xrdb-1.2.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xrdb-1.2.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--with-cpp=/usr/bin/cpp)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
