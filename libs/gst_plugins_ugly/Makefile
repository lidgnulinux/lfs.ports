COMMENT = GStreamer streaming media framework ugly plug-ins
VERSION = 1.28.3
REVISION = 0
CATEGORIES = libs
PKGNAME = gst_plugins_ugly
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gst-plugins-ugly-1.28.3.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.28.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-ugly-1.28.3
BUILD_OPTION = -Dtests="disabled" \
	-Dpackage-name="GStreamer ugly plug-ins (Linux From Scratch)"

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
