COMMENT = Binary-decimal and decimal-binary routines for IEEE doubles
VERSION = 3.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = double_conversion
HOMEPAGE = https://github.com/google/double-conversion
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/google/double-conversion/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = double-conversion-${VERSION}
BUILD_OPTION = -DBUILD_TESTING=OFF \
	-DCMAKE_BUILD_TYPE=None \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DCMAKE_INSTALL_LIBDIR=lib \
	-DBUILD_SHARED_LIBS=ON

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
