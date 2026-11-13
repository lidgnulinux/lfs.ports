COMMENT = Unofficial Cmake-based build system for android command line utilities.
VERSION = 37.0.0
REVISION = 0
CATEGORIES = tool
PKGNAME = android_tools
HOMEPAGE = https://github.com/nmeum/android-tools
SRCCD = archive
ARCHIVE = android-tools-${VERSION}p1.tar.xz
LINK = https://github.com/nmeum/android-tools/releases/download/${VERSION}p1/${ARCHIVE}
BUILD = cmake
BUILDDIR = android-tools-${VERSION}p1
BUILD_OPTION = -G Ninja -DCMAKE_BUILD_TYPE=None -DANDROID_TOOLS_ADB_ENABLE_MDNS=ON

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
