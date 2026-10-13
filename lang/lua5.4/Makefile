COMMENT = Powerful light-weight programming language
VERSION = 5.4.8
_VER = 5.4
REVISION = 0
CATEGORIES = lang
PKGNAME = lua5.4
HOMEPAGE = https://www.lua.org/
ARCHIVE = lua-${VERSION}.tar.gz
LINK = https://www.lua.org/ftp/lua-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lua-${VERSION}
export ldpath = /usr/lib/lua5.4
MAKEOPT = linux RPATH="/usr/lib" \
	INSTALL_INC=$(CURDIR)/package/usr/include/lua5.4 \
	INSTALL_LIB=$(CURDIR)/package/usr/lib/lua5.4

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	sed -e "s|@MAJOR_VER@|${_VER}|g" \
		-e "s|@MINOR_VER@|${VERSION}|g" \
		-i $(CURDIR)/lua5.4.pc
	sed -i 's/\/usr\/local/$$\{DESTDIR}\/usr/' ${BUILDDIR}/Makefile

post_build:
	install -Dm644 $(CURDIR)/lua5.4.pc -t package/usr/lib/pkgconfig

	ln -sv lua5.4.pc package/usr/lib/pkgconfig/lua5.4-c++.pc
	ln -sv lua5.4.pc package/usr/lib/pkgconfig/lua-5.4-c++.pc
	ln -sv lua5.4.pc package/usr/lib/pkgconfig/lua-5.4.pc
	mv package/usr/bin/lua package/usr/bin/lua5.4
	mv package/usr/bin/luac package/usr/bin/luac5.4
	mv package/usr/man/man1/lua.1 package/usr/man/man1/lua-54.1
	mv package/usr/man/man1/luac.1 package/usr/man/man1/luac-54.1

post-install:

include /usr/share/mk/lfs.port.mk
