COMMENT = Modular status panel for X11 and Wayland, inspired by Polybar
VERSION = 1.11.0
REVISION = 0
CATEGORIES = xapps
PKGNAME = yambar
HOMEPAGE = https://codeberg.org/dnkl/yambar
ARCHIVE = 1.11.0.tar.gz
LINK = https://codeberg.org/dnkl/yambar/archive/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = yambar
BUILD_OPTION =

prepare:

post_build:

post-install:
	@echo -e "If the ssid networks don't appear when you use wpa_supplicant, \n\
	try using -Dwext option when running wpa_supplicant !"

include /usr/share/mk/lfs.port.mk
