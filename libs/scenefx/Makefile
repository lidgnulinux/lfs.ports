COMMENT = A drop-in replacement for the wlroots scene API
VERSION = 0.5
REVISION = 0
CATEGORIES = libs
PKGNAME = scenefx
HOMEPAGE = https://github.com/wlrfx/scenefx
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/wlrfx/scenefx/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = scenefx-${VERSION}
BUILD_OPTION = -Dexamples=false

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/add-missing-include-for__always_inline.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
