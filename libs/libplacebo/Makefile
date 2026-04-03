COMMENT = Reusable library for GPU-accelerated video/image rendering
VERSION = 7.360.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libplacebo
HOMEPAGE = https://code.videolan.org/videolan/libplacebo
ARCHIVE = libplacebo-v7.360.1.tar.gz
LINK = https://code.videolan.org/videolan/libplacebo/-/archive/v7.360.1/libplacebo-v7.360.1.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = libplacebo-v7.360.1
BUILD_OPTION = -Dbackend_max_links=4 \
	-Ddemos=false \
	-Ddovi=disabled \
	-Dglslang=enabled \
	-Dlcms=enabled \
	-Dlibdovi=disabled \
	-Dshaderc=disabled \
	-Dtests="false" \
	-Dvulkan=enabled

prepare:
	patch -p1 -d ${BUILDDIR} < "$(PWD)/glslang-deps.patch"

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
