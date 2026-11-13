COMMENT = unofficial, high-level C++ dbus bindings
VERSION = 2.3.1
REVISION = 0
CATEGORIES = libs
PKGNAME = sdbus_cpp
HOMEPAGE = https://github.com/Kistler-Group/sdbus-cpp/
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/Kistler-Group/sdbus-cpp/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = sdbus-cpp-${VERSION}
BUILD_OPTION = -DBUILD_SHARED_LIBS=True \
	-DCMAKE_BUILD_TYPE=None \
	-DSDBUSCPP_BUILD_CODEGEN=True

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
