COMMENT = Library for AppStream metadata
VERSION = 0.8.4
REVISION = 0
CATEGORIES = libs
PKGNAME = appstream_glib
HOMEPAGE = https://people.freedesktop.org/~hughsient/appstream-glib/
ARCHIVE = appstream-glib-${VERSION}.tar.xz
LINK = https://github.com/hughsie/appstream-glib/releases/download/appstream_glib_0_8_4/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = appstream-glib-${VERSION}
BUILD_OPTION = -Ddep11=true \
	-Dbuilder=true \
	-Drpm=false \
	-Dalpm=false \
	-Dfonts=true \
	-Dman=false \
	-Dgtk-doc=false \
	-Dintrospection=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
