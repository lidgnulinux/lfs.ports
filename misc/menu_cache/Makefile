COMMENT = Caching mechanism for freedesktop.org compliant menus
VERSION = 1.1.0
REVISION = 0
CATEGORIES = misc
PKGNAME = menu_cache
HOMEPAGE = https://lxde.org/
ARCHIVE = menu-cache-1.1.0.tar.xz
LINK = https://downloads.sourceforge.net/lxde/menu-cache-1.1.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = menu-cache-1.1.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/usr/lib/menu-cache \
	--disable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/menu-cache-1.1.0-0001-Support-gcc10-compilation.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
