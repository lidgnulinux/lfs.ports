COMMENT = Libraries for working with WebP images
VERSION = 1.6.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libwebp
HOMEPAGE = https://developers.google.com/speed/webp
ARCHIVE = libwebp-1.6.0.tar.gz
LINK = https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libwebp-1.6.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-libwebpmux \
	--enable-libwebpdemux \
	--enable-libwebpdecoder \
	--disable-tiff \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
