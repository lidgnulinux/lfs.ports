COMMENT = A garbage collector for C and C++.
VERSION = 8.2.12
REVISION = 0
CATEGORIES = devel
PKGNAME = gc
HOMEPAGE = https://www.hboehm.info/gc/
ARCHIVE = gc-8.2.12.tar.gz
LINK = https://github.com/ivmai/bdwgc/releases/download/v8.2.12/gc-8.2.12.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = gc-8.2.12
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-cplusplus \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-threads=posix \
	--with-libatomic-ops=yes \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
