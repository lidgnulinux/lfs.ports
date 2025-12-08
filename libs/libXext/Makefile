COMMENT = Libxmp is a library that renders module files to PCM data
VERSION = 4.6.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libxmp
HOMEPAGE = https://github.com/libxmp/libxmp/
ARCHIVE = libxmp-${VERSION}.tar.gz
LINK = https://github.com/libxmp/libxmp/releases/download/libxmp-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = libxmp-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=None \
		-DCMAKE_INSTALL_PREFIX=/usr \
		-DBUILD_STATIC=OFF \
		-DWITH_UNIT_TESTS=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
