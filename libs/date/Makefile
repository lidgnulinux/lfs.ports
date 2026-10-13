COMMENT = Date and time library based on the C++11/14/17 <chrono> header
VERSION = 3.0.4
REVISION = 0
CATEGORIES = libs
PKGNAME = date
HOMEPAGE = https://howardhinnant.github.io/date/date.html
ARCHIVE = date-v3.0.4.tar.gz
LINK = https://github.com/HowardHinnant/date/archive/v3.0.4/date-v3.0.4.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = date-3.0.4
BUILD_OPTION = -DBUILD_SHARED_LIBS=true \
	-DBUILD_TZ_LIB=true \
	-DUSE_SYSTEM_TZ_DB=true \
	-DENABLE_DATE_TESTING=true \
	-Wno-dev

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
