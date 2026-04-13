COMMENT = OpenResty's branch of LuaJIT
VERSION = 2.1_p20251030
REVISION = 0
CATEGORIES = lang
PKGNAME = luajit
HOMEPAGE = https://github.com/openresty/luajit2
ARCHIVE = luajit2-2.1-20251030.tar.gz
LINK = https://github.com/openresty/luajit2/archive/v2.1-20251030/luajit2-2.1-20251030.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = luajit2-2.1-20251030
MAKEOPT = XCFLAGS="-DLUAJIT_ENABLE_LUA52COMPAT -DLUAJIT_NUMMODE=2"

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
