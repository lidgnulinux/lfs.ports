COMMENT = A library for layout and rendering of text.
VERSION = 1.58.2
REVISION = 2
CATEGORIES = libs
PKGNAME = pango
HOMEPAGE = https://www.pango.org/Introduction/
ARCHIVE = pango-1.58.2.tar.xz
LINK = https://ftp.gnome.org/pub/gnome/sources/pango/1.58/pango-1.58.2.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = pango-1.58.2
BUILD_OPTION = --buildtype=release \
	-Dintrospection=enabled \
	-Dfontconfig=enabled \
	-Dfreetype=enabled \
	-Dxft=enabled \
	-Ddocumentation=false \
	-Dman-pages=false \
	-Dbuild-testsuite=false \
	-Dsysprof=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
