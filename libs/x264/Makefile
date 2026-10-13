COMMENT = Free library for encoding H264/AVC video streams
VERSION = 0.164.3108
COMMIT = 31e19f92f00c7003fa115047ce50978bc98c3a0d
REVISION = 0
CATEGORIES = libs
PKGNAME = x264
HOMEPAGE = https://www.videolan.org/developers/x264.html
ARCHIVE = x264-${COMMIT}.tar.gz
LINK = https://code.videolan.org/videolan/x264/-/archive/${COMMIT}/x264-${COMMIT}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = x264-${COMMIT}
AUTO_CONF = (cd ${BUILDDIR} && pkgver=${VERSION} ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared \
	--enable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
