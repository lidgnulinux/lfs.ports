COMMENT = Sandboxed and extendable image decoding
VERSION = 2.1.0
REVISION = 0
CATEGORIES = tool
PKGNAME = libglycin
HOMEPAGE = https://gitlab.gnome.org/GNOME/glycin
ARCHIVE = glycin-2.1.0.tar.gz
LINK = https://gitlab.gnome.org/GNOME/glycin/-/archive/2.1.0/glycin-2.1.0.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = glycin-2.1.0
BUILD_OPTION = -Dglycin-loaders=false \
	-Dglycin-thumbnailer=false \
	-Dlibglycin-gtk4=false \
	-Dtest_skip_install=true \
	-Dtests=false
export RUSTFLAGS=-C target-feature=-crt-static

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
