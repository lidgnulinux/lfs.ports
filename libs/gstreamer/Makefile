COMMENT = GStreamer streaming media framework
VERSION = 1.28.7
REVISION = 0
CATEGORIES = libs
PKGNAME = gstreamer
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gstreamer-${VERSION}.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gstreamer-${VERSION}
BUILD_OPTION = -Dintrospection=enabled \
	-Dbash-completion=disabled \
	-Dpackage-name="GStreamer (LFS Libre)" \
	-Dtests=disabled \
	-Dtools=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
