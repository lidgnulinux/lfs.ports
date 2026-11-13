COMMENT = C library for parsing INI-style files
VERSION = 4.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = iniparser
HOMEPAGE = https://github.com/ndevilla/iniparser
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/ndevilla/iniparser/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = iniparser-${VERSION}
BUILD_OPTION = -DBUILD_SHARED_LIBS=ON \
	-DCMAKE_BUILD_TYPE=MinSizeRel \
	-DBUILD_TESTING=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
