COMMENT = SAX-based renderer for SVG files into a GdkPixbuf
VERSION = 2.62.1
REVISION = 0
CATEGORIES = libs
PKGNAME = librsvg
HOMEPAGE = https://gitlab.gnome.org/GNOME/librsvg
ARCHIVE = librsvg-2.62.1.tar.xz
LINK = https://download.gnome.org/sources/librsvg/2.62/librsvg-2.62.1.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = librsvg-2.62.1
BUILD_OPTION = -Dintrospection=enabled \
	-Dpixbuf=enabled \
	-Dpixbuf-loader=enabled \
	-Dvala=enabled \
	-Dtests=false \
	-Ddocs=disabled \
	-Davif=enabled
export RUSTFLAGS=-C target-feature=-crt-static

prepare:

post_build:

post-install:
	@echo "run gdk-pixbuf-query-loaders as the build suggest."
	/usr/bin/gdk-pixbuf-query-loaders

include /usr/share/mk/lfs.port.mk
