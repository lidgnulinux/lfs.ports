COMMENT = Freedesktop.org desktop menus for LXDE
VERSION = 0.1.7
REVISION = 0
CATEGORIES = misc
PKGNAME = lxmenu_data
HOMEPAGE = https://github.com/lxde/lxmenu-data
ARCHIVE = 0.1.7.tar.gz
LINK = https://github.com/lxde/lxmenu-data/archive/refs/tags/0.1.7.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxmenu-data-0.1.7
AUTO_CONF = (cd ${BUILDDIR} && autoreconf -fi && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
