COMMENT = Tools for configuring the console (keyboard, virtual terminals, etc.)
VERSION = 2.10.0
REVISION = 0
CATEGORIES = misc
PKGNAME = kbd
HOMEPAGE = https://kbd-project.org/
ARCHIVE = kbd-2.10.0.tar.xz
LINK = https://www.kernel.org/pub/linux/utils/kbd/kbd-2.10.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = kbd-2.10.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-vlock \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	sed -i '/RESIZECONS_PROGS=/s/yes/no/' ${BUILDDIR}/configure
	sed -i 's/resizecons.8 //' ${BUILDDIR}/docs/man/man8/Makefile.in

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
