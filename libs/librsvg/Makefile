COMMENT = SAX-based renderer for SVG files into a GdkPixbuf
VERSION = 2.63.4
REVISION = 1
CATEGORIES = libs
PKGNAME = librsvg
HOMEPAGE = https://gitlab.gnome.org/GNOME/librsvg
ARCHIVE = librsvg-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/librsvg/2.63/librsvg-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = librsvg-${VERSION}
BUILD_OPTION = -Dintrospection=enabled \
	-Dpixbuf=enabled \
	-Dpixbuf-loader=enabled \
	-Dvala=enabled \
	-Dtests=false \
	-Ddocs=disabled \
	-Davif=enabled

prepare:

post_build:

post-install:
	@echo "run gdk-pixbuf-query-loaders as the build suggest."
	/usr/bin/gdk-pixbuf-query-loaders

include /usr/share/mk/lfs.port.mk
