COMMENT = A C++ library that provides portable SIMD/vector intrinsics
VERSION = 1.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = highway
HOMEPAGE = https://github.com/google/highway/
ARCHIVE = highway-${VERSION}.tar.gz
LINK = https://github.com/google/highway/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = highway-${VERSION}
BUILD_OPTION = -G Ninja -DCMAKE_BUILD_TYPE:STRING='None' \
	-DCMAKE_INSTALL_PREFIX:PATH='/usr' \
	-DBUILD_SHARED_LIBS:BOOL='ON' \
	-DBUILD_TESTING:BOOL='OFF'

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
