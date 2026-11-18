COMMENT = Library to handle Apple Property List files
VERSION = 2.7.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libplist
HOMEPAGE = https://libimobiledevice.org/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/libimobiledevice/libplist/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libplist-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure PACKAGE_VERSION=${VERSION} \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
