COMMENT = Modular Wayland compositor library
VERSION = 0.20.rc4.c1fc928d5
_WLR = 1fc928d5280b77fdc19238225a64ad0585f8b723
REVISION = 0
CATEGORIES = libs
PKGNAME = wlroots_git
HOMEPAGE = https://gitlab.freedesktop.org/wlroots/wlroots
ARCHIVE = wlroots-${_WLR}.tar.gz
LINK = ${HOMEPAGE}/-/archive/${_WLR}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = wlroots-${_WLR}
BUILD_OPTION = -Dexamples=false -Dxwayland=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
