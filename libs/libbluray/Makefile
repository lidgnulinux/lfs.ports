COMMENT = Library for Blu-Ray disc playback
VERSION = 1.5.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libbluray
HOMEPAGE = https://www.videolan.org/developers/libbluray.html
ARCHIVE = libbluray-${VERSION}.tar.xz
LINK = https://download.videolan.org/pub/videolan/libbluray/${VERSION}/libbluray-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = libbluray-${VERSION}
BUILD_OPTION = -Ddefault_library=shared \
	-Dlibxml2=disabled \
	-Dfreetype=disabled \

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
