COMMENT = C API for USB device access.
VERSION = 1.0.30
REVISION = 0
CATEGORIES = libs
PKGNAME = libusb
HOMEPAGE = https://libusb.info/
ARCHIVE = libusb-${VERSION}.tar.bz2
LINK = https://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libusb-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared \
	--disable-udev \
	--enable-system-log)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
