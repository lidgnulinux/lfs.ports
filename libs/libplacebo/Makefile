COMMENT = Reusable library for GPU-accelerated video/image rendering
VERSION = 7.387.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libplacebo
HOMEPAGE = https://code.videolan.org/videolan/libplacebo
ARCHIVE = libplacebo-v${VERSION}.tar.gz
LINK = https://code.videolan.org/videolan/libplacebo/-/archive/v${VERSION}/libplacebo-v${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = libplacebo-v${VERSION}
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
	patch -p1 -d ${BUILDDIR} < "$(CURDIR)/glslang-deps.patch"

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
