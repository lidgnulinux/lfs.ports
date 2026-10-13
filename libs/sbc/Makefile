COMMENT = Bluetooth Subband Codec (SBC) library
VERSION = 2.1
REVISION = 0
CATEGORIES = libs
PKGNAME = sbc
HOMEPAGE = https://www.bluez.org/
ARCHIVE = sbc-2.1.tar.xz
LINK = https://www.kernel.org/pub/linux/bluetooth/sbc-2.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = sbc-2.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/gcc15.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
