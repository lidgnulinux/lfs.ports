COMMENT = An OpenType text shaping engine.
VERSION = 12.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = harfbuzz
HOMEPAGE = https://www.freedesktop.org/wiki/Software/HarfBuzz/
ARCHIVE = harfbuzz-12.3.2.tar.xz
LINK = https://github.com/harfbuzz/harfbuzz/releases/download/12.3.2/harfbuzz-12.3.2.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = harfbuzz-12.3.2
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

CPPFLAGS = -O2 -flto=auto -ffat-lto-objects
CFLAGS = -O2 -flto=auto -ffat-lto-objects
CXXFLAGS = -O2 -flto=auto -ffat-lto-objects

export CPPFLAGS CFLAGS CXXFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
