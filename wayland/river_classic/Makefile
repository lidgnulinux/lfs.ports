COMMENT = a dynamic tiling Wayland compositor with flexible runtime configuration.
VERSION = 0.3.18.cb1af960e
_SHA = b1af960e1bea8506c25179775c18f902a5cb8c87
REVISION = 0
CATEGORIES = wayland
PKGNAME = river_classic
HOMEPAGE = https://isaacfreund.com/software/river/
ARCHIVE = ${_SHA}.tar.gz
LINK = https://codeberg.org/river/river-classic/archive/${ARCHIVE}
SRCCD = archive
BUILD = zig
BUILDDIR = river-classic
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
	mv pkg/usr/bin/river pkg/usr/bin/river-classic
	mv pkg/usr/share/man/man1/river.1 \
		pkg/usr/share/man/man1/river-classic.1
	mv pkg/usr/share/pkgconfig/river-protocols.pc \
		pkg/usr/share/pkgconfig/river-protocols-classic.pc

	install -Dm644 ${BUILDDIR}/README.md \
		-t pkg/usr/share/doc/river-classic

post-install:

include /usr/share/mk/lfs.port.mk
