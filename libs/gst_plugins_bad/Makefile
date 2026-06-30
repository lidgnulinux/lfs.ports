COMMENT = GStreamer streaming media framework bad plug-ins
VERSION = 1.28.3
REVISION = 1
CATEGORIES = libs
PKGNAME = gst_plugins_bad
HOMEPAGE = https://gstreamer.freedesktop.org/
ARCHIVE = gst-plugins-bad-1.28.3.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.28.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-bad-1.28.3
BUILD_OPTION = -Dintrospection=enabled \
	-Dpackage-name="GStreamer base plug-ins (Linux From Scratch)" \
	-Dtests="disabled" \
	-Dgl="enabled"

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
