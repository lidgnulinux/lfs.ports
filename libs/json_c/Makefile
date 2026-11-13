COMMENT = The C library for parsing and manipulating strings in JSON format.
VERSION = 0.19
REVISION = 0
CATEGORIES = libs
PKGNAME = json_c
HOMEPAGE = https://github.com/json-c/json-c
ARCHIVE = json-c-0.19-20260627.tar.gz
LINK = https://github.com/json-c/json-c/archive/refs/tags/json-c-0.19-20260627.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = json-c-json-c-0.19-20260627
BUILD_OPTION = -DBUILD_SHARED_LIBS=ON \
	-DCMAKE_BUILD_TYPE=MinSizeRel \
	-DBUILD_STATIC_LIBS=OFF \
	-DBUILD_TESTING=OFF \
	-DDISABLE_WERROR=ON \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	-DENABLE_THREADING=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
