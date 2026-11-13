COMMENT = An OpenType text shaping engine.
VERSION = 15.0.0
REVISION = 1
CATEGORIES = libs
PKGNAME = harfbuzz
HOMEPAGE = https://www.freedesktop.org/wiki/Software/HarfBuzz/
ARCHIVE = harfbuzz-15.0.0.tar.xz
LINK = https://github.com/harfbuzz/harfbuzz/releases/download/15.0.0/harfbuzz-15.0.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = harfbuzz-15.0.0
BUILD_OPTION = --buildtype=release \
	-Ddocs=disabled \
	-Dglib=enabled \
	-Dgobject=enabled \
	-Dgraphite=disabled \
	-Dicu=enabled \
	-Dfreetype=enabled \
	-Dtests=disabled \
	-Dsubset=enabled \
	-Dintrospection=enabled \
	-Dcairo=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
