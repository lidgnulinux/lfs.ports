COMMENT = Fast and lightweight HTML/CSS rendering engine
VERSION = 0.10
REVISION = 0
CATEGORIES = libs
PKGNAME = litehtml
HOMEPAGE = http://www.litehtml.com/
ARCHIVE = litehtml-${VERSION}.tar.gz
LINK = https://github.com/litehtml/litehtml/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = litehtml-${VERSION}
BUILD_OPTION = -DEXTERNAL_GUMBO=ON -DBUILD_SHARED_LIBS=ON \
	-DLITEHTML_BUILD_TESTING=OFF
JOBS = -j3

prepare:

post_build:
	sed -e '/gumbo/d' -i package/usr/lib/cmake/litehtml/litehtmlConfig.cmake

post-install:

include /usr/share/mk/lfs.port.mk
