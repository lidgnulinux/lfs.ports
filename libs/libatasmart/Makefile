COMMENT = ATA S.M.A.R.T. reader and parser library
VERSION = 0.19
REVISION = 0
CATEGORIES = libs
PKGNAME = libatasmart
HOMEPAGE = https://0pointer.de/blog/projects/being-smart.html
ARCHIVE = libatasmart-${VERSION}.tar.xz
LINK = https://0pointer.de/public/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libatasmart-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--sbindir=/usr/bin)
MAKEOPT =

prepare:
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/0001-Dont-test-undefined-bits.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/0002-Drop-our-own-many-bad-sectors-heuristic.patch
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
