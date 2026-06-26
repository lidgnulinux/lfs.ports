COMMENT = Standalone widget system made in Rust
VERSION = 0.6.0.c865cf631
_REV = 865cf631d5bbb5f9fccc99b3f4cc80b9eeada18c
REVISION = 0
CATEGORIES = wayland
PKGNAME = eww
HOMEPAGE = https://github.com/elkowar/eww
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/elkowar/eww/archive/${ARCHIVE}
SRCCD = archive
BUILD = cargo
BUILDDIR = eww-${_REV}
export RUSTFLAGS=-C target-feature=-crt-static

prepare:

post_build:
	install -vDm644 ${BUILDDIR}/LICENSE -t "pkg/usr/share/licenses/eww/"
	install -vd "pkg/etc/xdg/eww/"
	cp -vr ${BUILDDIR}/examples/eww-bar "pkg/etc/xdg/eww/"
	install -vDm755 ${BUILDDIR}/target/release/eww -t "pkg/usr/bin/"

post-install:

include /usr/share/mk/lfs.port.mk
