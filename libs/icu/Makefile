COMMENT = International Components for Unicode library
VERSION = 78.3
REVISION = 0
CATEGORIES = libs
PKGNAME = icu
HOMEPAGE = https://icu.unicode.org/
ARCHIVE = icu4c-78.3-sources.tgz
LINK = https://github.com/unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz
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
	--disable-tests \
	--build=x86_64-pc-linux-musl)

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
