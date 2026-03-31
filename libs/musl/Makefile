COMMENT = the musl c library (libc) implementation
VERSION = 1.2.6
REVISION = 0
CATEGORIES = libs
PKGNAME = musl
HOMEPAGE = https://musl.libc.org/
ARCHIVE = musl-1.2.6.tar.gz
LINK = https://musl.libc.org/releases/musl-1.2.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = musl-1.2.6
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--enable-debug \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

override PACKAGE = ${PKGNAME}-${CATEGORIES}

prepare:

do_install:
	make -j4 -C ${BUILDDIR} PREFIX=${PREFIX} install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
