COMMENT = Desktop integration portal
VERSION = 1.21.2
REVISION = 0
CATEGORIES = libs
PKGNAME = xdg_desktop_portal
HOMEPAGE = https://github.com/flatpak/xdg-desktop-portal
ARCHIVE = xdg-desktop-portal-1.21.2.tar.xz
LINK = https://github.com/flatpak/xdg-desktop-portal/releases/download/1.21.2/xdg-desktop-portal-1.21.2.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = xdg-desktop-portal-1.21.2
BUILD_OPTION = -Dsystemd=disabled \
	-Dman-pages=disabled \
	-Dtests=disabled \
	-Ddebug=true \
	-Dsystemd-user-unit-dir=/trash

prepare:

post_build:
	install -Dm755 xdg-desktop-portal.initd \
		build/package/etc/user/init.d/xdg-desktop-portal
	install -Dm755 xdg-permission-store.initd \
		build/package/etc/user/init.d/xdg-permission-store
	install -Dm755 xdg-document-portal.initd \
		build/package/etc/user/init.d/xdg-document-portal

post-install:

include /usr/share/mk/lfs.port.mk
