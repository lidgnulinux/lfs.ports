COMMENT = Gtk implementation of xdg-desktop-portal
VERSION = 1.15.3
REVISION = 0
CATEGORIES = misc
PKGNAME = xdg_desktop_portal_gtk
HOMEPAGE = https://github.com/flatpak/xdg-desktop-portal-gtk
ARCHIVE = xdg-desktop-portal-gtk-1.15.3.tar.xz
LINK = https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = xdg-desktop-portal-gtk-1.15.3
BUILD_OPTION = -Dappchooser=enabled \
	-Ddatarootdir=/usr/lib/pkgconfig \
	-Ddbus-service-dir=/usr/share/dbus-1/services/ \
	-Dlockdown=enabled \
	-Dsettings=enabled \
	-Dwallpaper=auto

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
