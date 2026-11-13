COMMENT = Library for passing menus over DBus
VERSION = 16.04.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libdbusmenu_glib
HOMEPAGE = https://launchpad.net/libdbusmenu
ARCHIVE = libdbusmenu-16.04.0.tar.gz
LINK = https://launchpad.net/libdbusmenu/16.04/16.04.0/+download/libdbusmenu-16.04.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libdbusmenu-16.04.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-dumper \
	--disable-static \
	--enable-tests \
	--enable-vala \
	--enable-introspection \
	HAVE_VALGRIND_FALSE='')
MAKEOPT =

CFLAGS = -Wno-error
export CFLAGS

prepare:
	autoreconf -fi ${BUILDDIR}

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
