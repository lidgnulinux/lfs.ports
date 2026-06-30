COMMENT = GStreamer streaming media framework
VERSION = 1.28.3
REVISION = 0
CATEGORIES = libs
PKGNAME = gstreamer
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gstreamer-1.28.3.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.28.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gstreamer-1.28.3
BUILD_OPTION = -Dintrospection=enabled \
	-Dbash-completion=enabled \
	-Dpackage-name="GStreamer (LFS Musl)" \
	-Dtests=disabled \
	-Dtools=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
