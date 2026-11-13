COMMENT = Abseil Common Libraries (C++)
VERSION = 20260817.0
REVISION = 0
CATEGORIES = libs
PKGNAME = abseil_cpp
HOMEPAGE = https://abseil.io/
ARCHIVE = abseil-cpp-${VERSION}.tar.gz
LINK = https://github.com/abseil/abseil-cpp/archive/${VERSION}/abseil-cpp-${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = abseil-cpp-${VERSION}
BUILD_OPTION = -DCMAKE_SKIP_INSTALL_RPATH=ON \
		-DBUILD_SHARED_LIBS=ON \
		-DABSL_BUILD_TESTING=OFF \
		-DABSL_BUILD_TEST_HELPERS=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
