COMMENT = Resourcefriendly and feature-rich replacement for i3status, written in pure Rust
VERSION = 0.35.0
REVISION = 0
CATEGORIES = xapps
PKGNAME = i3status_rust
HOMEPAGE = https://github.com/greshake/i3status-rust
ARCHIVE = v0.35.0.tar.gz
LINK = https://github.com/greshake/i3status-rust/archive/v0.35.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = i3status-rust-0.35.0
RUSTFLAGS = -C target-feature=-crt-static
export RUSTFLAGS

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:
	cd ${BUILDDIR} && cargo build --release

post_build:
	install -Dt pkg/usr/bin ${BUILDDIR}/target/release/i3status-rs
	install -Dm644 -t pkg/usr/share/doc/${PKGNAME}/examples \
		${BUILDDIR}/examples/config.toml
	cp -r ${BUILDDIR}/examples/scripts pkg/usr/share/doc/${PKGNAME}/examples
	cp -r ${BUILDDIR}/examples/README.md pkg/usr/share/doc/${PKGNAME}/examples

post-install:

include /usr/share/mk/lfs.port.mk
