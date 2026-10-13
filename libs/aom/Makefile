COMMENT = Alliance for Open Media (AOM) AV1 codec SDK
VERSION = 3.13.1
REVISION = 0
CATEGORIES = libs
PKGNAME = aom
HOMEPAGE = https://aomedia.org/
ARCHIVE = libaom-3.13.1.tar.gz
LINK = https://storage.googleapis.com/aom-releases/libaom-3.13.1.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libaom-3.13.1
BUILD_OPTION = -DBUILD_SHARED_LIBS=True \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_TESTS="OFF"

prepare:
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/posix-implicit.patch
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/libaom-3.13.1-nasm3-1.patch 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
