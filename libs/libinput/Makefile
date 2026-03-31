COMMENT = Input device library.
VERSION = 1.31.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libinput
HOMEPAGE = https://www.freedesktop.org/wiki/Software/libinput
ARCHIVE = libinput-${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/libinput/libinput/-/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = libinput-${VERSION}
BUILD_OPTION = -Dudev-dir=/lib/udev/ \
	-Ddocumentation=false \
	-Dtests=false \
	-Dlibwacom=false \
	-Ddebug-gui=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
