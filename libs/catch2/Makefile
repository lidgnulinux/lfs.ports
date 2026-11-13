COMMENT = Modern, C++-native, header-only, test framework for unit-tests (v3)
VERSION = 3.16.1
REVISION = 0
CATEGORIES = libs
PKGNAME = catch2
HOMEPAGE = https://github.com/catchorg/Catch2
SRCCD = archive
ARCHIVE = catch2-${VERSION}.tar.gz
LINK = https://github.com/catchorg/Catch2/archive/v${VERSION}/${ARCHIVE}
BUILD = cmake
BUILDDIR = Catch2-${VERSION}
BUILD_OPTION = -DCATCH_DEVELOPMENT_BUILD=OFF \
	-DCATCH_BUILD_EXTRA_TESTS=OFF \
	-DCATCH_ENABLE_WERROR=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
