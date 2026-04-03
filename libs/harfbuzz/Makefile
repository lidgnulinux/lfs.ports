COMMENT = An OpenType text shaping engine.
VERSION = 14.0.0
REVISION = 0
CATEGORIES = libs
PKGNAME = harfbuzz
HOMEPAGE = https://www.freedesktop.org/wiki/Software/HarfBuzz/
ARCHIVE = harfbuzz-14.0.0.tar.xz
LINK = https://github.com/harfbuzz/harfbuzz/releases/download/14.0.0/harfbuzz-14.0.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = harfbuzz-14.0.0
BUILD_OPTION = --buildtype=release \
	--default-library=both \
	-Ddocs=disabled \
	-Dglib=enabled \
	-Dgobject=enabled \
	-Dgraphite=disabled \
	-Dicu=enabled \
	-Dfreetype=enabled \
	-Dtests=disabled \
	-Dcairo=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
