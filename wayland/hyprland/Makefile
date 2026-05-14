COMMENT = Independent, highly customizable, dynamic tiling \
	Wayland compositor that doesn't sacrifice on its looks.
VERSION = 0.55.0
_REV = af923e30d1d24f1f4a4f5cb8308065173c1d9539
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprland
HOMEPAGE = https://hyprland.org
ARCHIVE = Hyprland-v0.55.0.tar.gz
LINK = https://github.com/hyprwm/Hyprland/archive/v0.55.0/Hyprland-v0.55.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = Hyprland-0.55.0
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release -Wno-dev

prepare:
	sed -i "s/@HASH@/${_REV}/" ${BUILDDIR}/src/version.h.in
	sed -i "s/@BRANCH@/build-lfs_musl/" ${BUILDDIR}/src/version.h.in
	sed -i "s/@TAG@/v${VERSION}/" ${BUILDDIR}/src/version.h.in
	sed -i -e '/^release:/{n;s/-D/-DCMAKE_SKIP_RPATH=ON -D/}' ${BUILDDIR}/Makefile

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
