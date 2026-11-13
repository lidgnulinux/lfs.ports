COMMENT = Independent, highly customizable, dynamic tiling \
	Wayland compositor that doesn't sacrifice on its looks.
VERSION = 0.57.1
_REV = acc1aa0bfd4bd575dcb0f76c35ccf12b660a1ab9
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprland
HOMEPAGE = https://hyprland.org
ARCHIVE = source-v${VERSION}.tar.gz
LINK = https://github.com/hyprwm/Hyprland/releases/download/v${VERSION}/source-v${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = hyprland-source
MAKEOPT = release PREFIX=/usr

prepare:
	sed -i -e '/^release:/{n;s/-D/-DCMAKE_SKIP_RPATH=ON -D/}' \
		${BUILDDIR}/Makefile
	sed -i -e '/find_package.glaze/s/7...<8 //' \
		${BUILDDIR}/{.,hyprpm,start}/CMakeLists.txt

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
