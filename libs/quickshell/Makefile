COMMENT = Flexible toolkit for making desktop shells with QtQuick
VERSION = 0.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = quickshell
HOMEPAGE = https://git.outfoxxed.me/quickshell/quickshell
ARCHIVE = v${VERSION}.tar.gz
LINK = https://git.outfoxxed.me/quickshell/quickshell/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = quickshell
BUILD_OPTION = -G Ninja -DDISTRIBUTOR='Linux From Scratch' \
	-DDISTRIBUTOR_DEBUGINFO_AVAILABLE=No \
	-DCRASH_REPORTER=Off \
	-DSCREENCOPY=OFF \
	-DINSTALL_QML_PREFIX=lib/qt6/qml
JOBS = -j3

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
