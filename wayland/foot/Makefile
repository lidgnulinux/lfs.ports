COMMENT = Fast, lightweight and minimalistic Wayland terminal emulator
VERSION = 1.26.1
REVISION = 0
CATEGORIES = wayland
PKGNAME = foot
HOMEPAGE = https://codeberg.org/dnkl/foot
ARCHIVE = 1.26.1.tar.gz
LINK = https://codeberg.org/dnkl/foot/archive/1.26.1.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = foot
BUILD_OPTION = -Dterminfo-base-name=foot-extra \
	-Dutmp-backend=none \
	-Ddocs=enabled

prepare:

post_build:
	$(MAKE) strip

post-install:

include /usr/share/mk/lfs.port.mk
include strip.mk
