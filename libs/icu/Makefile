COMMENT = International Components for Unicode library
VERSION = 78.3
REVISION = 0
CATEGORIES = libs
PKGNAME = icu
HOMEPAGE = https://icu.unicode.org/
ARCHIVE = icu4c-${VERSION}-sources.tgz
LINK = https://github.com/unicode-org/icu/releases/download/release-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = icu/source
AUTO_CONF = (cd ${BUILDDIR} && ./configure CC=gcc CXX=g++ \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-icu-config \
	--disable-tests)

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
