COMMENT = JSON C++ library
VERSION = 1.9.6
REVISION = 0
CATEGORIES = libs
PKGNAME = jsoncpp
HOMEPAGE = https://github.com/open-source-parsers/jsoncpp
ARCHIVE = 1.9.6.tar.gz
LINK = https://github.com/open-source-parsers/jsoncpp/archive/1.9.6.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = jsoncpp-1.9.6
BUILD_OPTION = --default-library=both

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
