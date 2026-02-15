COMMENT = The GnuTLS Transport Layer Security Library.
VERSION = 3.8.12
REVISION = 0
CATEGORIES = libs
PKGNAME = gnutls
HOMEPAGE = https://gnutls.org/
ARCHIVE = gnutls-3.8.12.tar.xz
LINK = https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.12.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gnutls-3.8.12
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=no \
	--enable-threads=posix \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
