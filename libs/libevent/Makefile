COMMENT = An event notification library
VERSION = 2.1.13
REVISION = 0
CATEGORIES = libs
PKGNAME = libevent
HOMEPAGE = https://libevent.org/
ARCHIVE = libevent-${VERSION}-stable.tar.gz
LINK = https://github.com/libevent/libevent/releases/download/release-${VERSION}-stable/libevent-${VERSION}-stable.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libevent-${VERSION}-stable
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-libevent-regress \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p0 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
