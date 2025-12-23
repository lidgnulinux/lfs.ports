COMMENT = Reference implementation of the iCalendar format
VERSION = 3.0.20
REVISION = 0
CATEGORIES = libs
PKGNAME = libical
HOMEPAGE = https://libical.github.io/libical/
ARCHIVE = libical-3.0.20.tar.gz
LINK = https://github.com/libical/libical/releases/download/v3.0.20/libical-3.0.20.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libical-3.0.20
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DSHARED_ONLY=true \
	-DENABLE_GTK_DOC=false \
	-DGOBJECT_INTROSPECTION=true \
	-DICAL_GLIB_VAPI=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
