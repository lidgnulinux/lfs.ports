COMMENT = Gnome HTTP client/server Library
VERSION = 3.6.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libsoup3
HOMEPAGE = https://wiki.gnome.org/Projects/libsoup
ARCHIVE = libsoup-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/libsoup/3.6/libsoup-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = libsoup-${VERSION}
BUILD_OPTION = -Dtls_check=false \
	-Dintrospection=enabled \
	-Dvapi=enabled \
	-Dtests="false"

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
