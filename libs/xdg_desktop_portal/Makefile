COMMENT = Desktop integration portal
VERSION = 1.22.1
REVISION = 0
CATEGORIES = libs
PKGNAME = xdg_desktop_portal
HOMEPAGE = https://github.com/flatpak/xdg-desktop-portal
ARCHIVE = xdg-desktop-portal-1.21.2.tar.xz
LINK = https://github.com/flatpak/xdg-desktop-portal/releases/download/1.21.2/xdg-desktop-portal-1.21.2.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = xdg-desktop-portal-1.21.2
BUILD_OPTION = -Dsystemd=enabled \
	-Dman-pages=disabled \
	-Dtests=disabled \
	-Ddebug=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
