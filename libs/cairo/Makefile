COMMENT = A vector graphics library.
VERSION = 1.18.6
REVISION = 0
CATEGORIES = libs
PKGNAME = cairo
HOMEPAGE = https://www.cairographics.org/
ARCHIVE = cairo-1.18.6.tar.bz2
LINK = https://gitlab.freedesktop.org/cairo/cairo/-/archive/1.18.6/cairo-1.18.6.tar.bz2
SRCCD = archive
BUILD = meson
BUILDDIR = cairo-1.18.6
BUILD_OPTION = -Dgtk_doc=false \
	-Dtests=disabled \
	-Dfontconfig=enabled \
	-Dfreetype=enabled \
	-Dglib=enabled \
	-Dpng=enabled \
	-Dtee=enabled \
	-Dxcb=enabled \
	-Dzlib=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
