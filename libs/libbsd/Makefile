COMMENT = commonly-used BSD functions not implemented by all libcs
VERSION = 0.12.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libbsd
HOMEPAGE = https://libbsd.freedesktop.org/
ARCHIVE = libbsd-${VERSION}.tar.xz
LINK = https://libbsd.freedesktop.org/releases/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libbsd-${VERSION}
AUTO_CONF =  (cd ${BUILDDIR} && autoreconf -vfi && \
	CFLAGS+=' -ffat-lto-objects' ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var)
GRAFT = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
