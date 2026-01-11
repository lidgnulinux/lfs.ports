COMMENT = URL retrival utility and library
VERSION = 8.18.0
REVISION = 0
CATEGORIES = net
PKGNAME = curl
HOMEPAGE = https://curl.se/
LINK = https://curl.se/download/curl-${VERSION}.tar.xz
ARCHIVE = curl-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = curl-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-ipv6 \
	--enable-pthreads \
	--enable-threaded-resolver \
	--with-ca-path=/etc/ssl/certs \
	--without-libssh2 \
	--with-openssl \
	--with-libidn2 \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
