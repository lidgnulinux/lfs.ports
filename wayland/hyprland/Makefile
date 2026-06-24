COMMENT = Independent, highly customizable, dynamic tiling \
	Wayland compositor that doesn't sacrifice on its looks.
VERSION = 0.55.4
_REV = a0136d8c04687bb36eb8a28eb9d1ff92aea99704
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprland
HOMEPAGE = https://hyprland.org
ARCHIVE = source-v0.55.4.tar.gz
LINK = https://github.com/hyprwm/Hyprland/releases/download/v0.55.4/source-v0.55.4.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprland-source
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release -Wno-dev

prepare:
	sed -i -e '/^release:/{n;s/-D/-DCMAKE_SKIP_RPATH=ON -D/}' ${BUILDDIR}/Makefile

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
