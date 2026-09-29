COMMENT = C library for generating PDF documents
VERSION = 2.4.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libharu
HOMEPAGE = https://github.com/libharu/libharu
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/libharu/libharu/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = libharu-${VERSION}
BUILD_OPTION = -DBUILD_SHARED_LIBS=True \
	-DCMAKE_BUILD_TYPE=MinSizeRel \
	-DLIBHPDF_STATIC=OFF

prepare:

post_build:
	rm -rf package/usr/share/libharu

post-install:

include /usr/share/mk/lfs.port.mk
