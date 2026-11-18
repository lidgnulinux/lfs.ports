COMMENT = Client library to multiplex connections from and to iOS devices
VERSION = 2.1.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libusbmuxd
HOMEPAGE = https://libimobiledevice.org/
ARCHIVE = 2.1.1.tar.gz
LINK = https://github.com/libimobiledevice/libusbmuxd/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libusbmuxd-2.1.1
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
