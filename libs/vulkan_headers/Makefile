COMMENT = Vulkan header files
VERSION = 1.4.360
REVISION = 1
CATEGORIES = libs
PKGNAME = vulkan_headers
HOMEPAGE = https://www.khronos.org/vulkan
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/khronosgroup/vulkan-headers/archive/refs/tags/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = Vulkan-Headers-${VERSION}
BUILD_OPTION = -DVULKAN_HEADERS_ENABLE_MODULE=OFF -DCMAKE_BUILD_TYPE=None
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
