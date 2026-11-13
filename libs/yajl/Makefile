COMMENT = Yet Another JSON Library (YAJL)
VERSION = 2.1.0
REVISION = 0
CATEGORIES = libs
PKGNAME = yajl
HOMEPAGE = https://lloyd.github.io/yajl/
SRCCD = archive
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/lloyd/yajl/archive/refs/tags/${ARCHIVE}
BUILD = cmake
BUILDDIR = yajl-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/CVE-2023-33460.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/cmake4.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
