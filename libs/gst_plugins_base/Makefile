COMMENT = GStreamer streaming media framework base plug-ins
VERSION = 1.28.3
REVISION = 0
CATEGORIES = libs
PKGNAME = gst_plugins_base
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gst-plugins-base-1.28.3.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.28.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-base-1.28.3
BUILD_OPTION = -Dalsa=enabled \
	-Dintrospection=enabled \
	-Dpackage-name="GStreamer base plug-ins (Linux From Scratch)" \
	-Dtests="disabled" \
	-Dplayback="enabled" \
	-Dgl="enabled"

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
