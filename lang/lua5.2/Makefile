COMMENT = Powerful light-weight programming language
VERSION = 5.2.4
REVISION = 0
CATEGORIES = lang
PKGNAME = lua5.2
HOMEPAGE = https://www.lua.org/
ARCHIVE = lua-5.2.4.tar.gz
LINK = https://www.lua.org/ftp/lua-5.2.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lua-5.2.4
MAKEOPT = linux V=${VERSION} \
	CFLAGS="-DLUA_USE_LINUX \
	-DLUA_COMPAT_ALL" \
	RPATH="/usr/lib" \
	LIB_LIBS="-lpthread -lm -ldl" \
	INSTALL_TOP="$(CURDIR)/package"/usr \
	INSTALL_INC="$(CURDIR)/package"/usr/include/lua5.2 \
	INSTALL_LIB="$(CURDIR)/package"/usr/lib/lua5.2


prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:
	mv package/usr/bin/lua package/usr/bin/lua5.2
	mv package/usr/bin/luac package/usr/bin/luac5.2

	install -Dm644 $(CURDIR)/lua5.2.pc -t package/usr/lib/pkgconfig
	ln -sv lua5.2.pc package/usr/lib/pkgconfig/lua-5.2.pc

post-install:

include /usr/share/mk/lfs.port.mk
