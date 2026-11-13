COMMENT = API and commands for processing SPIR-V modules
VERSION = 1.4.363.0
REVISION = 0
CATEGORIES = tool
PKGNAME = spirv_tools
HOMEPAGE = https://github.com/KhronosGroup/SPIRV-Tools
ARCHIVE = vulkan-sdk-1.4.363.0.tar.gz
LINK = https://github.com/KhronosGroup/SPIRV-tools/archive/refs/tags/vulkan-sdk-1.4.363.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = SPIRV-Tools-vulkan-sdk-1.4.363.0
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DBUILD_SHARED_LIBS=ON \
	-DSPIRV_WERROR=OFF \
	-DSPIRV-Headers_SOURCE_DIR=/usr \
	-DSPIRV_TOOLS_BUILD_STATIC=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
