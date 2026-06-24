COMMENT = wlroots implementation of xdg-desktop-portal
VERSION = 0.8.2
REVISION = 0
CATEGORIES = wayland
PKGNAME = xdg_desktop_portal_wlr
HOMEPAGE = https://github.com/emersion/xdg-desktop-portal-wlr
ARCHIVE = xdg-desktop-portal-wlr-0.8.2.tar.gz
LINK = https://github.com/emersion/xdg-desktop-portal-wlr/releases/download/v0.8.2/xdg-desktop-portal-wlr-0.8.2.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = xdg-desktop-portal-wlr-0.8.2
BUILD_OPTION = -Dsd-bus-provider=libelogind

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/default-systemd-user_unit_dir.patch

post_build:
	install -Dm644 config build/package/etc/xdg/xdg-desktop-portal-wlr/config

post-install:

include /usr/share/mk/lfs.port.mk
