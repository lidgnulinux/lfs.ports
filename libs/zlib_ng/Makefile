COMMENT = zlib replacement with optimizations for next generation systems
VERSION = 2.3.3
REVISION = 0
CATEGORIES = libs
PKGNAME = zlib_ng
HOMEPAGE = https://github.com/zlib-ng/zlib-ng
ARCHIVE = zlib-ng-${VERSION}.tar.gz
LINK = https://github.com/zlib-ng/zlib-ng/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = zlib-ng-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_VERBOSE_MAKEFILE=ON \
	-DWITH_DFLTCC_DEFLATE=ON \
	-DWITH_DFLTCC_INFLATE=ON \
	-DZLIB_ENABLE_TESTS=OFF \
	-DZLIBNG_ENABLE_TESTS=OFF \
	-DWITH_GTEST=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
