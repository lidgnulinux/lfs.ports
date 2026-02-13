COMMENT = Abseil Common Libraries (C++)
VERSION = 20250814.1
REVISION = 0
CATEGORIES = libs
PKGNAME = abseil_cpp
HOMEPAGE = https://abseil.io/
ARCHIVE = abseil-cpp-20250814.1.tar.gz
LINK = https://github.com/abseil/abseil-cpp/archive/20250814.1/abseil-cpp-20250814.1.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = abseil-cpp-20250814.1
BUILD_OPTION = -DCMAKE_SKIP_INSTALL_RPATH=ON \
		-DBUILD_SHARED_LIBS=ON \
		-DABSL_BUILD_TESTING=OFF \
		-DABSL_BUILD_TEST_HELPERS=OFF

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
