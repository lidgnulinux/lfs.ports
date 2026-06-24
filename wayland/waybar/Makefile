COMMENT = Highly customizable Wayland bar for Sway and Wlroots based compositors
VERSION = 0.15.0.c05945748
_REV = 05945748dccce28bf96d26d8f64a9e69a8dd49ba
REVISION = 0
CATEGORIES = wayland
PKGNAME = waybar
HOMEPAGE = https://github.com/Alexays/Waybar/
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/Alexays/Waybar/archive/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = Waybar-${_REV}
BUILD_OPTION = -Ddefault_library=shared \
	-Ddbusmenu-gtk=enabled \
	-Dlibevdev=disabled \
	-Dlibnl=enabled \
	-Dlibudev=enabled \
	-Dman-pages=enabled \
	-Dmpd=disabled \
	-Dmpris=disabled \
	-Dpulseaudio=enabled \
	-Drfkill=enabled \
	-Dsndio=enabled \
	-Dsystemd=disabled \
	-Dwireplumber=enabled \
	-Dupower_glib=enabled \
	-Dtests=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
