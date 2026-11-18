COMMENT = A library for manipulating block devices
VERSION = 3.6.0
REVISION = 2
CATEGORIES = libs
PKGNAME = libblockdev
HOMEPAGE = https://github.com/storaged-project/libblockdev
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/storaged-project/libblockdev/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libblockdev-3.6.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--without-gtk-doc \
	--without-nvdim \
	--without-tools \
	--without-smartmontools \
	--without-escrow)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
