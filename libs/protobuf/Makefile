COMMENT = Library for extensible, efficient structure packing
VERSION = 31.1
REVISION = 0
CATEGORIES = libs
PKGNAME = protobuf
HOMEPAGE = https://github.com/protocolbuffers/protobuf
ARCHIVE = v31.1.tar.gz
LINK = https://github.com/protocolbuffers/protobuf/archive/refs/tags/v31.1.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = protobuf-31.1
BUILD_OPTION = -DCMAKE_BUILD_TYPE=None \
	-DBUILD_SHARED_LIBS=ON \
	-Dprotobuf_BUILD_TESTS=OFF \
	-Dprotobuf_BUILD_LIBPROTOC=ON

export CFLAGS = -DNDEBUG -O2
export CXXFLAGS = -DNDEBUG -O2 -Wno-deprecated-declarations

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	sed -i \
		-e "/Requires:/s|;| |g" \
		-e "/Requires:/s|::|_|g" \
		package/usr/lib/pkgconfig/protobuf.pc

post-install:

include /usr/share/mk/lfs.port.mk
