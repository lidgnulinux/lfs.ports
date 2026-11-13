COMMENT = Fast, lightweight and minimalistic Wayland terminal emulator
VERSION = 1.28.0
REVISION = 0
CATEGORIES = wayland
PKGNAME = foot
HOMEPAGE = https://codeberg.org/dnkl/foot
ARCHIVE = ${VERSION}.tar.gz
LINK = https://codeberg.org/dnkl/foot/archive/${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = foot
BUILD_OPTION = -Dterminfo-base-name=foot-extra \
	-Dutmp-backend=none \
	-Ddocs=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
