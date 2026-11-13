COMMENT = GStreamer streaming media framework bad plug-ins
VERSION = 1.28.7
REVISION = 0
CATEGORIES = libs
PKGNAME = gst_plugins_bad
HOMEPAGE = https://gstreamer.freedesktop.org/
ARCHIVE = gst-plugins-bad-${VERSION}.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-bad-${VERSION}
BUILD_OPTION = -Dintrospection=enabled \
	-Dpackage-name="GStreamer base plug-ins (LFS Libre)" \
	-Dtests="disabled" \
	-Dgl="enabled"

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
