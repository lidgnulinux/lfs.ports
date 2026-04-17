COMMENT = a dynamic tiling Wayland compositor with flexible runtime configuration.
VERSION = 0.3.0.ea4774c6
_REV = ea4774c686b95b82555a7843abdb51cdd6e29426
REVISION = 0
CATEGORIES = wayland
PKGNAME = river_classic
HOMEPAGE = https://isaacfreund.com/software/river/
ARCHIVE = ${_REV}.tar.gz
LINK = https://codeberg.org/river/river-classic/archive/${ARCHIVE}
SRCCD = archive
BUILD = zig
BUILDDIR = river-classic
ZIGPATH = zig-x86_64-linux-0.15.2
BUILD_OPTION = --summary all \
	--prefix /usr \
	--search-prefix /usr \
	-Dtarget=x86_64-linux-musl \
	-Doptimize=ReleaseSafe \
	-Dxwayland

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/out_of_source_doc_build.patch

post_build:
	cp -a build/* pkg
	mv pkg/usr/bin/river pkg/usr/bin/river-classic
	rm -rf pkg/usr/share/{fish,pkgconfig,river-protocols}
	mv pkg/usr/share/man/man1/river.1 pkg/usr/share/man/man1/river-classic.1
	install -Dm644 ${BUILDDIR}/example/init -t pkg/usr/share/doc/river

post-install:

include /usr/share/mk/lfs.port.mk
