COMMENT = A backend implementation for xdg-desktop-portal using GTK
VERSION = 1.15.3
REVISION = 0
CATEGORIES = libs
PKGNAME = xdg_desktop_portal_gtk
HOMEPAGE = https://github.com/flatpak/xdg-desktop-portal-gtk
SRCCD = archive
ARCHIVE = xdg-desktop-portal-gtk-${VERSION}.tar.xz
LINK = https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/${VERSION}/${ARCHIVE}
BUILD = meson
BUILDDIR = xdg-desktop-portal-gtk-${VERSION}
BUILD_OPTION = -Dappchooser=enabled \
		-Dlockdown=enabled \
		-Dsettings=enabled \
		-Dwallpaper=enabled

prepare:

post_build:
	install -vDm644 -t build/package/usr/share/xdg-desktop-portal $(CURDIR)/gtk-portals.conf

post-install:

include /usr/share/mk/lfs.port.mk
