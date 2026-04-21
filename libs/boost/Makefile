COMMENT = Free peer-reviewed portable C++ source libraries
VERSION = 1.84.0
REVISION = 0
CATEGORIES = libs
PKGNAME = boost
HOMEPAGE = https://www.boost.org/
ARCHIVE = boost_1_84_0.tar.bz2
LINK = https://archives.boost.io/release/1.84.0/source/boost_1_84_0.tar.bz2
SRCCD = archive
BUILD = custom
BUILDDIR = boost_1_84_0

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

custom-build:
	cd ${BUILDDIR}; ./bootstrap.sh --prefix=/usr --with-python=python3 
	cd ${BUILDDIR}; ./b2 stage -j3 threading=multi link=shared
	cd ${BUILDDIR}; ./b2 --includedir=$(PWD)/pkg/usr/include \
		--libdir=$(PWD)/pkg/usr/lib \
		install threading=multi link=shared

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
