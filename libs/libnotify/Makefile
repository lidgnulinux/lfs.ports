COMMENT = Desktop notification library
VERSION = 0.8.9
REVISION = 0
CATEGORIES = libs
PKGNAME = libnotify
HOMEPAGE = https://gitlab.gnome.org/GNOME/libnotify
ARCHIVE = libnotify-${VERSION}.tar.xz
LINK = https://download.gnome.org/sources/libnotify/0.8/libnotify-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = libnotify-${VERSION}
BUILD_OPTION = -Dtests="false" \
	-Dintrospection=enabled \
	-Dgtk_doc=false \
	-Ddocbook_docs=disabled \
	-Dman=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
