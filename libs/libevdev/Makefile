COMMENT = Kernel Evdev Device Wrapper Library
VERSION = 1.14.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libevdev
HOMEPAGE = https://www.freedesktop.org/wiki/Software/libevdev
ARCHIVE = libevdev-${VERSION}.tar.xz
LINK = https://www.freedesktop.org/software/libevdev/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = libevdev-${VERSION}
BUILD_OPTION = -Dtests=disabled -Ddocumentation=disabled -Dcoverity=false 

prepare:

post_build:

include /usr/share/mk/lfs.port.mk
