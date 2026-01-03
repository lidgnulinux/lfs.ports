COMMENT = C library for manipulating zip archives
VERSION = 1.11.4
REVISION = 0
CATEGORIES = libs
PKGNAME = libzip
HOMEPAGE = https://libzip.org/
ARCHIVE = libzip-1.11.4.tar.xz
LINK = https://libzip.org/download/libzip-1.11.4.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = libzip-1.11.4
BUILD_OPTION = -DBUILD_EXAMPLES=OFF \
	-DENABLE_BZIP2=ON \
	-DENABLE_LZMA=ON \
	-DENABLE_ZSTD=ON \
	-DCMAKE_BUILD_TYPE=MinSizeRel

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
