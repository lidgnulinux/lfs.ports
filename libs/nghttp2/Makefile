COMMENT = HTTP/2 C library.
VERSION = 1.70.0
REVISION = 0
CATEGORIES = libs
PKGNAME = nghttp2
HOMEPAGE = https://nghttp2.org/
ARCHIVE = nghttp2-${VERSION}.tar.bz2
LINK = https://github.com/nghttp2/nghttp2/releases/download/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nghttp2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-lib-only \
	--disable-examples \
	--disable-http3 \
	--without-jansson \
	--without-jemalloc \
	--without-libbpf \
	--without-libnghttp3 \
	--without-libngtcp2 \
	--without-libxml2 \
	--without-mruby \
	--without-neverbleed \
	--without-cunit)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
