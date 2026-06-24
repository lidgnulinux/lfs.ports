COMMENT = The version 3 of the GTK+ toolkit.
VERSION = 3.24.52
REVISION = 0
CATEGORIES = libs
PKGNAME = gtk3
HOMEPAGE = https://www.gtk.org
ARCHIVE = gtk-3.24.52.tar.xz
LINK = https://download.gnome.org/sources/gtk/3.24/gtk-3.24.52.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = gtk-3.24.52
BUILD_OPTION = --buildtype=release \
	--strip \
	-Dcolord=no \
	-Dgtk_doc=false \
	-Dman=false \
	-Dtests=false \
	-Dx11_backend=true \
	-Dbroadway_backend=true \
	-Dwayland_backend=true \
	-Dxinerama=yes \
	-Dprint_backends="file,lpr"

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
