COMMENT = An efficient object serialization library
VERSION = 7.0.2
REVISION = 0
CATEGORIES = libs
PKGNAME = msgpack_c
HOMEPAGE = https://msgpack.org/
ARCHIVE = c-7.0.2.tar.gz 
LINK = https://github.com/msgpack/msgpack-c/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = msgpack-c-c-7.0.2
BUILD_OPTION = -DCMAKE_BUILD_TYPE=None \
	-DBUILD_SHARED_LIBS=ON \
	-DMSGPACK_ENABLE_STATIC=OFF \
	-DMSGPACK_BUILD_EXAMPLES=OFF \
	-DMSGPACK_BUILD_TESTS=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
