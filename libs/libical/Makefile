COMMENT = Reference implementation of the iCalendar format
VERSION = 4.0.7
REVISION = 0
CATEGORIES = libs
PKGNAME = libical
HOMEPAGE = https://libical.github.io/libical/
ARCHIVE = libical-${VERSION}.tar.gz
LINK = https://github.com/libical/libical/releases/download/v${VERSION}/libical-${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libical-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DENABLE_GTK_DOC=false \
	-DGOBJECT_INTROSPECTION=true \
	-DLIBICAL_JAVA_BINDINGS=false \
	-DLIBICAL_GLIB_BUILD_DOCS=False \
	-DICAL_GLIB_VAPI=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
