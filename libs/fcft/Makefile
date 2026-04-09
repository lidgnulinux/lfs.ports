COMMENT = Simple library for font loading and glyph rasterization using FontConfig, FreeType and pixman
VERSION = 3.3.3
REVISION = 0
CATEGORIES = libs
PKGNAME = fcft
HOMEPAGE = https://codeberg.org/dnkl/fcft
ARCHIVE = 3.3.3.tar.gz
LINK = https://codeberg.org/dnkl/fcft/archive/3.3.3.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = fcft
BUILD_OPTION = -Dsvg-backend=nanosvg \
	-Dtest-text-shaping=true \
	-Ddocs=disabled

prepare:

post_build:
	$(MAKE) strip

post-install:

include /usr/share/mk/lfs.port.mk
include strip.mk
