COMMENT = C library for manipulating zip archives
VERSION = 1.12.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libzip
HOMEPAGE = https://libzip.org/
ARCHIVE = libzip-${VERSION}.tar.xz
LINK = https://libzip.org/download/libzip-${VERSION}.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = libzip-${VERSION}
BUILD_OPTION = -DBUILD_EXAMPLES=OFF \
	-DENABLE_BZIP2=ON \
	-DENABLE_LZMA=ON \
	-DENABLE_ZSTD=ON \
	-DCMAKE_BUILD_TYPE=MinSizeRel

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
