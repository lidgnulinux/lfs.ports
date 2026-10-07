COMMENT = Concurrent ML-like concurrency for Guile
VERSION = 1.4.3
REVISION = 2
CATEGORIES = libs
PKGNAME = fibers
HOMEPAGE = https://codeberg.org/wingo/fibers
ARCHIVE = v${VERSION}.tar.gz 
LINK = https://codeberg.org/fibers/fibers/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = fibers
AUTO_CONF = (cd ${BUILDDIR} && autoreconf -vif && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--infodir=/usr/share/info/${PKGNAME})
MAKEOPT =
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
