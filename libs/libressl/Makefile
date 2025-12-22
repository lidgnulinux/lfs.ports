COMMENT = A version of the TLS/crypto stack.
VERSION = 4.2.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libressl
HOMEPAGE = https://www.libressl.org
ARCHIVE = libressl-4.2.0.tar.gz
LINK = https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-4.2.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libressl-4.2.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-hardening \
	--enable-nc \
	--with-openssldir=/etc/ssl \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
