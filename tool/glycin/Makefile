COMMENT = Sandboxed and extendable image decoding
VERSION = 2.1.0
REVISION = 1
CATEGORIES = tool
PKGNAME = glycin
HOMEPAGE = https://gitlab.gnome.org/GNOME/glycin
ARCHIVE = glycin-2.1.0.tar.gz
LINK = https://gitlab.gnome.org/GNOME/glycin/-/archive/2.1.0/glycin-2.1.0.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = glycin-2.1.0
BUILD_OPTION = -Dlibglycin=false \
	-Dlibglycin-gtk4=false \
	-Dloaders="glycin-heif,glycin-svg,glycin-image-rs" \
	-Dtest_skip_install=true \
	-Dtests=false
export RUSTFLAGS=-C target-feature=-crt-static

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
