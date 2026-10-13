COMMENT = A vector graphics library.
VERSION = 1.18.4
REVISION = 0
CATEGORIES = libs
PKGNAME = cairo
HOMEPAGE = https://www.cairographics.org/
ARCHIVE = cairo-1.18.4.tar.bz2
LINK = https://gitlab.freedesktop.org/cairo/cairo/-/archive/1.18.4/cairo-1.18.4.tar.bz2
SRCCD = archive
BUILD = meson
BUILDDIR = cairo-1.18.4
BUILD_OPTION = -Ddefault_library=both \
	-Dgtk_doc=false \
	-Dtests=disabled \
	-Dfontconfig=enabled \
	-Dfreetype=enabled \
	-Dglib=enabled \
	-Dpng=enabled \
	-Dtee=enabled \
	-Dxcb=enabled \
	-Dzlib=enabled

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/musl-stacksize.patch 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
