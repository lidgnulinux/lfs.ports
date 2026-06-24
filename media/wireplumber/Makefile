COMMENT = Session / policy manager implementation for PipeWire
VERSION = 0.5.14
REVISION = 0
CATEGORIES = media
PKGNAME = wireplumber
HOMEPAGE = https://pipewire.org/
ARCHIVE = wireplumber-0.5.14.tar.gz
LINK = https://gitlab.freedesktop.org/PipeWire/wireplumber/-/archive/0.5.14/wireplumber-0.5.14.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = wireplumber-0.5.14
BUILD_OPTION = -Dintrospection=enabled \
	-Dsystem-lua=false \
	-Delogind=enabled \
	-Dsystemd-user-service=true \
	-Dsystemd-user-unit-dir="/usr/lib/systemd/user" \
	-Ddoc=disabled \
	-Dtests=false

prepare:

post_build:
	rm -rf build/package/usr/lib/liblua.a

post-install:

include /usr/share/mk/lfs.port.mk
