COMMENT = C API for USB device access.
VERSION = 1.0.29
REVISION = 0
CATEGORIES = libs
PKGNAME = libusb
HOMEPAGE = https://libusb.info/
ARCHIVE = libusb-1.0.29.tar.bz2
LINK = https://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.29/libusb-1.0.29.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libusb-1.0.29
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared \
	--disable-udev \
	--enable-system-log \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
