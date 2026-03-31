COMMENT = An image loading library
VERSION = 2.44.5
REVISION = 2
CATEGORIES = libs
PKGNAME = gdk_pixbuf
HOMEPAGE = https://developer.gnome.org/gdk-pixbuf/stable/
ARCHIVE = gdk-pixbuf-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/gdk-pixbuf/2.44/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = gdk-pixbuf-${VERSION}
BUILD_OPTION = -Dman=false \
	-Dinstalled_tests=false \
	-Dglycin=enabled \
	-Dpng=enabled \
	-Djpeg=enabled \
	-Dintrospection=enabled \
	-Dtests=false 

prepare:

post_build:

post-install:
	gdk-pixbuf-query-loaders --update-cache

include /usr/share/mk/lfs.port.mk
