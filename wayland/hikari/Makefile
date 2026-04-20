COMMENT = Stacking Wayland compositor with additional tiling capabilities
VERSION = 2.3.3
REVISION = 0
CATEGORIES = wayland
PKGNAME = hikari
HOMEPAGE = https://hub.darcs.net/raichoo/hikari
ARCHIVE = hikari-2.3.3.tar.gz
LINK = https://hikari.acmelabs.space/releases/hikari-2.3.3.tar.gz
SRCCD = archive
BUILD = bmake
BUILDDIR = hikari-2.3.3
MAKEOPT = WITH_ALL=1 ETC_PREFIX=/ PREFIX=/usr VERSION="${VERSION}"
export PKG_CONFIG_PATH=/usr/lib/wlroots0.16/pkgconfig
STRIP = no

prepare:

post_build:

post-install:
	@echo "Need to patch the binary, so it would point to /usr/lib/wlroots0.16/libwlroots.so.11"
	patchelf --replace-needed libwlroots.so.10 /usr/lib/wlroots0.16/libwlroots.so.11 /usr/bin/hikari

include /usr/share/mk/lfs.port.mk
