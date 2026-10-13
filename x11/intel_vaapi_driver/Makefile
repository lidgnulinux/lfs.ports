COMMENT = VA driver for Intel G45 and HD Graphics family.
VERSION = 2.4.1
REVISION = 0
CATEGORIES = x11
PKGNAME = intel_vaapi_driver
HOMEPAGE = https://01.org/linuxmedia
ARCHIVE = intel-vaapi_driver-2.4.1.tar.bz2
LINK = https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/intel-vaapi-driver-2.4.1.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = intel-vaapi-driver-2.4.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-wayland \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p0 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
