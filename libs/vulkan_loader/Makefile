COMMENT = Vulkan Installable Client Driver (ICD) Loader
VERSION = 1.4.313.0
REVISION = 0
CATEGORIES = libs
PKGNAME = vulkan_loader
HOMEPAGE = https://www.khronos.org/vulkan
ARCHIVE = vulkan-loader-sdk-1.4.313.0.tar.gz
LINK = https://github.com/khronosgroup/vulkan-loader/archive/refs/tags/vulkan-sdk-1.4.313.0/vulkan-loader-sdk-1.4.313.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = Vulkan-Loader-vulkan-sdk-1.4.313.0
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_SYSCONFDIR=/etc \
	-DCMAKE_INSTALL_DATADIR=share \
	-DCMAKE_SKIP_RPATH=True \
	-DVULKAN_HEADERS_INSTALL_DIR=/usr

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
