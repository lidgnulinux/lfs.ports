COMMENT = LuaJIT bindings for gnome/gobject using gobject-introspection library
VERSION = 0.9.2
REVISION = 0
CATEGORIES = libs
PKGNAME = lgi
HOMEPAGE = https://github.com/lgi-devs/lgi
ARCHIVE = a412921fad445bcfc05a21148722a92ecb93ad06.tar.gz
LINK = https://github.com/lgi-devs/lgi/archive/a412921fad445bcfc05a21148722a92ecb93ad06.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lgi-a412921fad445bcfc05a21148722a92ecb93ad06
MAKEOPT =	LUA_INCDIR=/usr/include/luajit-2.1 \
	LUA_CFLAGS="$(pkg-config --cflags luajit) -I/usr/include/luajit-2.1 -O2" \
	LUA_LIBDIR=/usr/lib/lua/5.1 \
	LUA_SHAREDIR=/usr/share/lua/5.1

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	install -Dm 755 ${BUILDDIR}/tools/dump-typelib.lua \
		package/usr/bin/dump-typelib-luajit

post-install:

include /usr/share/mk/lfs.port.mk
