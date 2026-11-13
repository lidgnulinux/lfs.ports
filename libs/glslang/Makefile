COMMENT = Khronos reference front-end for GLSL, ESSL, and sample SPIR-V generator
VERSION = 1.4.341.0
REVISION = 0
CATEGORIES = libs
PKGNAME = glslang
HOMEPAGE = https://github.com/KhronosGroup/glslang
ARCHIVE = vulkan-sdk-${VERSION}.tar.gz
LINK = https://github.com/KhronosGroup/glslang/archive/refs/tags/vulkan-sdk-${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = glslang-vulkan-sdk-${VERSION}

prepare:

shared:
	cmake -DCMAKE_INSTALL_PREFIX=/usr \
		-DCMAKE_INSTALL_LIBDIR=lib \
		-B build-shared -G Ninja \
		-S ${BUILDDIR} \
		-DBUILD_EXTERNAL=OFF \
		-DBUILD_SHARED_LIBS=ON \
		-DALLOW_EXTERNAL_SPIRV_TOOLS=YES \
		-DGLSLANG_TESTS="OFF"

	cmake --build build-shared

static:
	cmake -DCMAKE_INSTALL_PREFIX=/usr \
		-DCMAKE_INSTALL_LIBDIR=lib \
		-B build-static -G Ninja \
		-S ${BUILDDIR} \
		-DBUILD_EXTERNAL=OFF \
		-DBUILD_SHARED_LIBS=OFF \
		-DALLOW_EXTERNAL_SPIRV_TOOLS=YES \
		-DGLSLANG_TESTS="OFF"

	cmake --build build-static

install-build:
	DESTDIR="pkg" cmake --install build-static
	DESTDIR="pkg" cmake --install build-shared

custom-build: shared static install-build

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
