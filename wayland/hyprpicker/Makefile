COMMENT = A wlroots-compatible Wayland color picker that does not suck.
VERSION = 0.4.8
REVISION = 0
CATEGORIES = tool
PKGNAME = hyprpicker
HOMEPAGE = https://github.com/hyprwm/hyprpicker
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/hyprwm/hyprpicker/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprpicker-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE='None' \
	-DCMAKE_INSTALL_PREFIX='/usr' \
	-Wno-dev

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
