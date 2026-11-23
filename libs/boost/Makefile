COMMENT = Free peer-reviewed portable C++ source libraries
VERSION = 1.92.0
REVISION = 0
CATEGORIES = libs
PKGNAME = boost
HOMEPAGE = https://www.boost.org/
ARCHIVE = boost-${VERSION}-b2-nodocs.tar.xz
LINK = https://github.com/boostorg/boost/releases/download/boost-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = boost-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; ./bootstrap.sh --prefix=$(CURDIR)/pkg/usr --with-python=python3 
	cd ${BUILDDIR}; ./b2 stage -j3 threading=multi link=shared
	cd ${BUILDDIR}; ./b2 --includedir=$(CURDIR)/pkg/usr/include \
		install threading=multi link=shared \
		--libdir=$(CURDIR)/pkg/usr/lib

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
