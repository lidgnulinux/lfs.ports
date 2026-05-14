COMMENT = Powerful light-weight programming language
VERSION = 5.5.0
REVISION = 0
CATEGORIES = lang
PKGNAME = lua5.5
HOMEPAGE = https://www.lua.org/
ARCHIVE = lua-5.5.0.tar.gz
LINK = https://www.lua.org/ftp/lua-5.5.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lua-5.5.0
export ldpath = /usr/lib/lua5.5
MAKEOPT = linux

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	install -Dm644 $(PWD)/lua5.5.pc -t package/usr/lib/pkgconfig

	ln -sv lua5.5.pc package/usr/lib/pkgconfig/lua5.5-c++.pc
	ln -sv lua5.5.pc package/usr/lib/pkgconfig/lua-5.5-c++.pc
	ln -sv lua5.5.pc package/usr/lib/pkgconfig/lua-5.5.pc

post-install:

include /usr/share/mk/lfs.port.mk
