COMMENT = Implementation of the line breaking and word breaking algorithms
VERSION = 6.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libunibreak
HOMEPAGE = https://github.com/adah1972/libunibreak
ARCHIVE = libunibreak-6.1.tar.gz
LINK = https://github.com/adah1972/libunibreak/releases/download/libunibreak_6_1/libunibreak-6.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libunibreak-6.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	autoreconf -vif ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
