COMMENT = LuaJIT bindings for gnome/gobject using gobject-introspection library
VERSION = 0.9.2
REVISION = 0
CATEGORIES = libs
PKGNAME = lgi
HOMEPAGE = https://github.com/pavouk/lgi
ARCHIVE = 0.9.2.tar.gz
LINK = https://github.com/pavouk/lgi/archive/0.9.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lgi-0.9.2
MAKEOPT =	LUA_INCDIR=/usr/include/luajit-2.1 \
	LUA_CFLAGS="$(pkg-config --cflags luajit) -I/usr/include/luajit-2.1 -O2" \
	LUA_LIBDIR=/usr/lib/lua/5.1 \
	LUA_SHAREDIR=/usr/share/lua/5.1

prepare:

post_build:
	install -Dm 755 ${BUILDDIR}/tools/dump-typelib.lua \
		package/usr/bin/dump-typelib-luajit

post-install:

include /usr/share/mk/lfs.port.mk
