COMMENT = a non-monolithic Wayland compositor
VERSION = 0.4.2
REVISION = 0
CATEGORIES = wayland
PKGNAME = river
HOMEPAGE = https://isaacfreund.com/software/river/
ARCHIVE = v0.4.2.tar.gz
LINK = https://codeberg.org/river/river/archive/v0.4.2.tar.gz
SRCCD = archive
BUILD = zig
BUILDDIR = river
ZIGPATH = zig-x86_64-linux-0.15.2
BUILD_OPTION = --summary all \
	--prefix /usr \
	--search-prefix /usr \
	--global-cache-dir $(PWD)/zig-global-cache \
	--system $(PWD)/zig-global-cache/p \
	-Dtarget=x86_64-linux-musl \
	-Doptimize=ReleaseSafe \
	-Dxwayland


get_deps_archive:
	wget -c https://codeberg.org/ifreund/zig-pixman/archive/v0.3.0.tar.gz \
		-O zig-pixman-0.3.0.tar.gz
	wget -c https://codeberg.org/ifreund/zig-wayland/archive/v0.5.0.tar.gz \
		-O zig-wayland-0.5.0.tar.gz
	wget -c https://codeberg.org/ifreund/zig-wlroots/archive/v0.20.0.tar.gz \
		-O zig-wlroots-0.20.0.tar.gz
	wget -c https://codeberg.org/ifreund/zig-xkbcommon/archive/v0.4.0.tar.gz \
		-O zig-xkbcommon-0.4.0.tar.gz

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/out_of_source_adjustment.patch
	mkdir zig-global-cache
	${ZIGPATH}/zig fetch --global-cache-dir ./zig-global-cache \
		zig-pixman-0.3.0.tar.gz
	${ZIGPATH}/zig fetch --global-cache-dir ./zig-global-cache \
		zig-wayland-0.5.0.tar.gz
	${ZIGPATH}/zig fetch --global-cache-dir ./zig-global-cache \
		zig-wlroots-0.20.0.tar.gz
	${ZIGPATH}/zig fetch --global-cache-dir ./zig-global-cache \
		zig-xkbcommon-0.4.0.tar.gz

post_build:
	cp -a build/* pkg

	install -Dm644 ${BUILDDIR}/README.md -t pkg/usr/share/doc/river
	install -Dm644 ${BUILDDIR}/contrib/river.desktop -t pkg/usr/share/wayland-sessions

post-install:

include /usr/share/mk/lfs.port.mk
