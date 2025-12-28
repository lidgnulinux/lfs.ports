COMMENT = GStreamer streaming media framework good plug-ins
VERSION = 1.26.9
REVISION = 0
CATEGORIES = libs
PKGNAME = gst_plugins_good
HOMEPAGE = https://gstreamer.freedesktop.org
ARCHIVE = gst-plugins-good-1.26.9.tar.xz
LINK = https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.26.9.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gst-plugins-good-1.26.9
BUILD_OPTION = -Dtests="disabled" \
	-Dpackage-name="GStreamer good plug-ins (Linux From Scratch)" 

ldpath="/usr/lib/gstreamer-1.0"
export ldpath

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
