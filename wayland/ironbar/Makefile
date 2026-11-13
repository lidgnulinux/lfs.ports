COMMENT = Customisable Wayland gtk bar written in Rust.
VERSION = 0.19.1
REVISION = 0
CATEGORIES = wayland
PKGNAME = ironbar
HOMEPAGE = https://crates.io/crates/ironbar
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/JakeStanger/ironbar/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cargo
BUILDDIR = ironbar-${VERSION}

prepare:

post_build:
	install -Dm 755 ${BUILDDIR}/target/release/ironbar pkg/usr/bin/ironbar
	mkdir -p pkg/usr/share/ironbar/
	cp -r ${BUILDDIR}/examples/* pkg/usr/share/ironbar/

post-install:

include /usr/share/mk/lfs.port.mk
