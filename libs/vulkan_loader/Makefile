COMMENT = Vulkan Installable Client Driver (ICD) Loader
VERSION = 1.4.347
REVISION = 0
CATEGORIES = libs
PKGNAME = vulkan_loader
HOMEPAGE = https://www.khronos.org/vulkan
ARCHIVE = v1.4.347.tar.gz
LINK = https://github.com/khronosgroup/vulkan-loader/archive/refs/tags/v1.4.347.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = Vulkan-Loader-1.4.347
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_SYSCONFDIR=/etc \
	-DCMAKE_INSTALL_DATADIR=share \
	-DCMAKE_SKIP_RPATH=True \
	-DVULKAN_HEADERS_INSTALL_DIR=/usr

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
