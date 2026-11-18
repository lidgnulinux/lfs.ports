COMMENT = Library to communicate with services on iOS devices using native protocols
VERSION = 1.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libimobiledevice
HOMEPAGE = https://libimobiledevice.org/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/libimobiledevice/libimobiledevice/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libimobiledevice-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure PACKAGE_VERSION=${VERSION} \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
