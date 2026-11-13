COMMENT = GStreamer streaming media framework base plug-ins
VERSION = 1.28.7
REVISION = 0
CATEGORIES = libs
PKGNAME = gst_plugins_base
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gst-plugins-base-${VERSION}.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-base-${VERSION}
BUILD_OPTION = -Dalsa=enabled \
	-Dintrospection=enabled \
	-Dpackage-name="GStreamer base plug-ins (LFS Libre)" \
	-Dtests="disabled" \
	-Dplayback="enabled" \
	-Dgl="enabled"

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
