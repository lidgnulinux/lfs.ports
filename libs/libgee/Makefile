COMMENT = GObject collection library
VERSION = 0.20.8
REVISION = 0
CATEGORIES = libs
PKGNAME = libgee
HOMEPAGE = https://gitlab.gnome.org/GNOME/libgee
ARCHIVE = libgee-0.20.8.tar.xz
LINK = https://download.gnome.org/sources/libgee/0.20/libgee-0.20.8.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = libgee-0.20.8
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS="-fpermissive" ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
