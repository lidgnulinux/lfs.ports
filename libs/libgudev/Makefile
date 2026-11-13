COMMENT = GObject-based wrapper library for libudev
VERSION = 238
REVISION = 0
CATEGORIES = libs
PKGNAME = libgudev
HOMEPAGE = https://gitlab.gnome.org/GNOME/libgudev
ARCHIVE = libgudev-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/libgudev/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = libgudev-${VERSION}
BUILD_OPTION = -Dtests=disabled \
	-Dintrospection=enabled \
	-Dvapi=enabled \
	-Dgtk_doc=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
