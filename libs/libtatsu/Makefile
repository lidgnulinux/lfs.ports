COMMENT = Library handling the communication with Apple's Tatsu Signing Server (TSS)
VERSION = 1.0.5
REVISION = 0
CATEGORIES = libs
PKGNAME = libtatsu
HOMEPAGE = https://libimobiledevice.org/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/libimobiledevice/libtatsu/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libtatsu-${VERSION}
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
