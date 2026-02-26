COMMENT = Caching mechanism for freedesktop.org compliant menus
VERSION = 1.1.1
REVISION = 0
CATEGORIES = libs
PKGNAME = menu_cache
HOMEPAGE = https://lxde.org/
ARCHIVE = 1.1.1.tar.gz
LINK = https://github.com/lxde/menu-cache/archive/refs/tags/1.1.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = menu-cache-1.1.1
AUTO_CONF = (cd ${BUILDDIR} && ./autogen.sh && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/usr/lib/menu-cache \
	--disable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
