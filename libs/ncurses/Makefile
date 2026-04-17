COMMENT = Console display library
VERSION = 6.6_p20260404
REVISION = 0
CATEGORIES = libs
PKGNAME = ncurses
HOMEPAGE = https://invisible-island.net/ncurses/
ARCHIVE = ncurses-6.6-20260404.tgz
LINK = https://invisible-mirror.net/archives/ncurses/current/ncurses-6.6-20260404.tgz
SRCCD = archive
BUILD = make
BUILDDIR = ncurses-6.6-20260404
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--with-shared \
	--without-debug \
	--with-cxx-shared \
	--with-cxx-binding \
	--enable-symlinks \
	--enable-pc-files \
	--enable-widec \
	--with-pkg-config-libdir=/usr/lib/pkgconfig \
	--sysconfdir=/etc)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/cleanup-pkgconfig-ldflags.patch

post_build:
	for lib in ncurses ncurses++ form panel menu; do \
		ln -s $${lib}w.pc package/usr/lib/pkgconfig/$${lib}.pc; \
		ln -s lib$${lib}w.a package/usr/lib/lib$${lib}.a; \
		ln -s lib$${lib}w.so package/usr/lib/lib$${lib}.so; \
	done

	for lib in curses tic tinfo; do \
		ln -s libncurses.a package/usr/lib/lib$${lib}.a; \
		ln -s libncurses.so package/usr/lib/lib$${lib}.so; \
		ln -s ncurses.pc package/usr/lib/pkgconfig/$${lib}.pc; \
	done

	ln -s libncursesw.so package/usr/lib/libcursesw.so

post-install:

include /usr/share/mk/lfs.port.mk
