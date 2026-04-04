COMMENT = Customisable Wayland gtk bar written in Rust.
VERSION = 0.18.0
REVISION = 0
CATEGORIES = wayland
PKGNAME = ironbar
HOMEPAGE = https://crates.io/crates/ironbar
ARCHIVE = v0.18.0.tar.gz
LINK = https://github.com/JakeStanger/ironbar/archive/v0.18.0.tar.gz
SRCCD = archive
BUILD = cargo
BUILDDIR = ironbar-0.18.0
export RUSTFLAGS = -C target-feature=-crt-static

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/libressl-4.2.0-adjustment.patch

post_build:
	install -Dm 755 ${BUILDDIR}/target/release/ironbar pkg/usr/bin/ironbar
	mkdir -p pkg/usr/share/ironbar/
	cp -r ${BUILDDIR}/examples/* pkg/usr/share/ironbar/

post-install:

include /usr/share/mk/lfs.port.mk
include cargo.mk
