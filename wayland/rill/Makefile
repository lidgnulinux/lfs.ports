COMMENT = A minimalist scrolling window manager with simple animation
VERSION = 0.fde218933
REVISION = 0
CATEGORIES = wayland
PKGNAME = rill
HOMEPAGE = https://codeberg.org/lzj15/rill
SRCCD = git
BUILD = zig
BUILDDIR = rill
ZIGPATH = zig-x86_64-linux-0.15.2
BUILD_OPTION = --prefix /usr \
	--search-prefix /usr \
	-Dtarget=x86_64-linux-musl \
	--release=safe \
	-Doptimize=ReleaseSafe

prepare:

post_build:
	cp -a build/* pkg

post-install:

include /usr/share/mk/lfs.port.mk
