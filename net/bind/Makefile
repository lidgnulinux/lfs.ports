COMMENT = The ISC DNS server
VERSION = 9.20.20
REVISION = 0
CATEGORIES = net
PKGNAME = bind
HOMEPAGE = https://www.isc.org/bind/
ARCHIVE = bind-9.20.20.tar.xz
LINK = https://downloads.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = bind-9.20.20
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc/bind \
	--localstatedir=/var \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--with-libxml2 \
	--with-json-c \
	--enable-largefile \
	--enable-linux-caps \
	--enable-shared \
	--disable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
export CFLAGS=-D_GNU_SOURCE

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
