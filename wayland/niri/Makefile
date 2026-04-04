COMMENT = A scrollable-tiling Wayland compositor
VERSION = 25.11
REVISION = 0
CATEGORIES = wayland
PKGNAME = niri
HOMEPAGE = https://github.com/YaLTeR/niri
ARCHIVE = v25.11.tar.gz
LINK = https://github.com/YaLTeR/niri/archive/refs/tags/v25.11.tar.gz
SRCCD = archive
BUILD = cargo
BUILDDIR = niri-25.11
BUILD_OPTION = --no-default-features --features dbus,xdp-gnome-screencast
export RUSTFLAGS = -C target-feature=-crt-static

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/niri-session.patch

post_build:
	install -Dm755 ${BUILDDIR}/target/release/niri -t pkg/usr/bin/
	install -Dm755 ${BUILDDIR}/resources/niri-session -t pkg/usr/bin/

	install -Dm644 ${BUILDDIR}/resources/niri.desktop -t pkg/usr/share/wayland-sessions/
	install -Dm644 ${BUILDDIR}/resources/niri-portals.conf -t pkg/usr/share/xdg-desktop-portal/

post-install:

include /usr/share/mk/lfs.port.mk
