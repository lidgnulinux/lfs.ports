COMMENT = Sandboxed and extendable image decoding
VERSION = 2.2.5
REVISION = 1
CATEGORIES = tool
PKGNAME = glycin
HOMEPAGE = https://gitlab.gnome.org/GNOME/glycin
ARCHIVE = glycin-${VERSION}.tar.gz
LINK = https://gitlab.gnome.org/GNOME/glycin/-/archive/${VERSION}/glycin-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = glycin-${VERSION}
BUILD_OPTION = -Dlibglycin=false \
	-Dlibglycin-gtk4=false \
	-Dloaders="glycin-heif,glycin-svg,glycin-image-rs" \
	-Dtest_skip_install=true \
	-Dtests=false

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
