COMMENT = Unofficial Cmake-based build system for android command line utilities.
VERSION = 35.0.2
REVISION = 0
CATEGORIES = tool
PKGNAME = android_tools
HOMEPAGE = https://github.com/nmeum/android-tools
ARCHIVE = android-tools-35.0.2.tar.xz
LINK = https://github.com/nmeum/android-tools/releases/download/35.0.2/android-tools-35.0.2.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = android-tools-35.0.2
BUILD_OPTION = -DANDROID_TOOLS_USE_BUNDLED_LIBUSB=ON -DCMAKE_BUILD_TYPE=None
export LDFLAGS = -Wl,--copy-dt-needed-entries

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
