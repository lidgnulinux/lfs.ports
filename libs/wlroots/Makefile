COMMENT = Modular Wayland compositor library
VERSION = 0.20.2
REVISION = 1
CATEGORIES = libs
PKGNAME = wlroots
HOMEPAGE = https://gitlab.freedesktop.org/wlroots/wlroots
ARCHIVE = wlroots-${VERSION}.tar.gz
LINK = ${HOMEPAGE}/-/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = wlroots-${VERSION}
BUILD_OPTION = -Dexamples=false -Dxwayland=enabled -Dcolor-management=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
