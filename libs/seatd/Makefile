COMMENT = Minimal seat management daemon
VERSION = 0.9.3
REVISION = 2
CATEGORIES = libs
PKGNAME = seatd
HOMEPAGE = https://sr.ht/~kennylevinsen/seatd/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://git.sr.ht/~kennylevinsen/seatd/archive/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = seatd-${VERSION}
BUILD_OPTION = -Dserver=enabled \
	-Dlibseat-seatd=enabled \
	-Dman-pages=disabled \
	-Dexamples=disabled

prepare:

post_build:

include /usr/share/mk/lfs.port.mk
