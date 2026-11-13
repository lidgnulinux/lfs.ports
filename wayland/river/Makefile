COMMENT = a non-monolithic Wayland compositor
VERSION = 0.4.2.c576a58da
_SHA = 576a58da94ef25bc6a4efabeebaf8c8ffe7414d3
REVISION = 0
CATEGORIES = wayland
PKGNAME = river
HOMEPAGE = https://isaacfreund.com/software/river/
ARCHIVE = ${_SHA}.tar.gz
LINK = https://codeberg.org/river/river/archive/${ARCHIVE}
SRCCD = archive
BUILD = zig
BUILDDIR = river
ZIGPATH = /usr/share/zig-0.16.0
BUILD_OPTION = --summary all \
	--prefix /usr \
	--search-prefix /usr \
	-Dtarget=x86_64-linux-musl \
	-Doptimize=ReleaseSafe \
	-Dxwayland

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/out_of_source_adjustment.patch

post_build:
	cp -a build/* pkg

	install -Dm644 ${BUILDDIR}/README.md -t pkg/usr/share/doc/river
	install -Dm644 ${BUILDDIR}/contrib/river.desktop -t pkg/usr/share/wayland-sessions

post-install:

include /usr/share/mk/lfs.port.mk
