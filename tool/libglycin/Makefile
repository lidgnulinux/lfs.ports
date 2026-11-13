COMMENT = Sandboxed and extendable image decoding
VERSION = 2.2.5
REVISION = 1
CATEGORIES = tool
PKGNAME = libglycin
HOMEPAGE = https://gitlab.gnome.org/GNOME/glycin
ARCHIVE = glycin-${VERSION}.tar.gz
LINK = https://gitlab.gnome.org/GNOME/glycin/-/archive/${VERSION}/glycin-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = glycin-${VERSION}
BUILD_OPTION = -Dglycin-loaders=false \
	-Dglycin-thumbnailer=false \
	-Dlibglycin-gtk4=false \
	-Dtest_skip_install=true \
	-Dtests=false

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/rustix.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/bwrap-blocked.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
