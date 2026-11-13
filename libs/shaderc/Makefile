COMMENT = Collection of tools, libraries, and tests for Vulkan shader compilation
VERSION = 2026.1
REVISION = 0
CATEGORIES = libs
PKGNAME = shaderc
HOMEPAGE = https://github.com/google/shaderc
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/google/shaderc/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = shaderc-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DCMAKE_CXX_FLAGS:STRING="-I/usr/include/glslang" \
	-DBUILD_SHARED_LIBS=ON \
	-DSHADERC_SKIP_TESTS=ON \
	-DSHADERC_ENABLE_TESTS=OFF \
	-Dglslang_SOURCE_DIR=/usr/include/glslang \
	-DSHADERC_ENABLE_EXAMPLES=OFF

prepare:
	sed -i '/examples/d;/third_party/d' ${BUILDDIR}/CMakeLists.txt
	sed -i '/build-version/d' ${BUILDDIR}/glslc/CMakeLists.txt
	cp -r "$(CURDIR)/build-version.inc" ${BUILDDIR}/glslc/src/build-version.inc

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
