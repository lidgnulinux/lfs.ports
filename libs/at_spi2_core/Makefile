COMMENT = Protocol definitions and daemon for D-Bus at-spi
VERSION = 2.58.2
REVISION = 0
CATEGORIES = libs
PKGNAME = at_spi2_core
HOMEPAGE = https://wiki.gnome.org/Accessibility/
ARCHIVE = at-spi2-core-2.59.90.tar.xz
LINK = https://download.gnome.org/sources/at-spi2-core/2.59/at-spi2-core-2.59.90.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = at-spi2-core-2.59.90
BUILD_OPTION = --buildtype=release \
	-Dx11=enabled \
	-Dintrospection=enabled \
	-Ddocs=false \
	-Ddbus_daemon=/usr/bin/dbus-daemon

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
