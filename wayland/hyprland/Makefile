COMMENT = Independent, highly customizable, dynamic tiling Wayland compositor that doesn't sacrifice on its looks.
VERSION = 0.54.1
_REV = 4b07770b9ef1cceb2e6f56d33538aaffb9186b9c
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprland
HOMEPAGE = https://hyprland.org
ARCHIVE = Hyprland-v0.54.1.tar.gz
LINK = https://github.com/hyprwm/Hyprland/archive/v0.54.1/Hyprland-v0.54.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = Hyprland-0.54.1
MAKEOPT = release 

prepare:
	sed -i "s/@HASH@/${_REV}/" ${BUILDDIR}/src/version.h.in
	sed -i "s/@BRANCH@/build-lfs_musl/" ${BUILDDIR}/src/version.h.in
	sed -i "s/@TAG@/v${VERSION}/" ${BUILDDIR}/src/version.h.in
	sed -i -e '/^release:/{n;s/-D/-DCMAKE_SKIP_RPATH=ON -D/}' ${BUILDDIR}/Makefile

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
