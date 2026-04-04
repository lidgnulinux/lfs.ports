COMMENT = A library for layout and rendering of text.
VERSION = 1.57.1
REVISION = 0
CATEGORIES = libs
PKGNAME = pango
HOMEPAGE = https://www.pango.org/Introduction/
ARCHIVE = pango-1.57.1.tar.xz
LINK = https://ftp.gnome.org/pub/gnome/sources/pango/1.57/pango-1.57.1.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = pango-1.57.1
BUILD_OPTION = --buildtype=release \
	--strip \
	--wrap-mode=nofallback \
	-Db_lto=true \
	-Dintrospection=enabled \
	-Dfontconfig=enabled \
	-Dfreetype=enabled \
	-Dxft=enabled \
	-Ddefault_library=both

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
