COMMENT = Alliance for Open Media (AOM) AV1 codec SDK
VERSION = 3.15.3
REVISION = 0
CATEGORIES = libs
PKGNAME = aom
HOMEPAGE = https://aomedia.org/
ARCHIVE = libaom-${VERSION}.tar.gz
LINK = https://storage.googleapis.com/aom-releases/libaom-${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libaom-${VERSION}
BUILD_OPTION = -DBUILD_SHARED_LIBS=True \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_TESTS="OFF"

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
