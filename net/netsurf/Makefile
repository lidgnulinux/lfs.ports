COMMENT = free, open source web browser
VERSION = 3.11
REVISION = 0
CATEGORIES = net
PKGNAME = netsurf
HOMEPAGE = http://www.netsurf-browser.org
ARCHIVE = netsurf-all-${VERSION}.tar.gz
LINK = http://download.netsurf-browser.org/netsurf/releases/source-full/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = netsurf-all-${VERSION}
MAKEOPT = TARGET=gtk3 \
	LIBDIR=lib \
	INCLUDEDIR=include \
	PREFIX=/usr
export CFLAGS = -fcommon

prepare:
	sed 's:-Werror::' -i ${BUILDDIR}/libsvgtiny/Makefile
	cd ${BUILDDIR}/netsurf/content; \
		for i in ../../../patch/*; do patch -p1 < $$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
