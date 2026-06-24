COMMENT = Basic cryptographic library.
VERSION = 1.12.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libgcrypt
HOMEPAGE = https://www.gnupg.org
ARCHIVE = libgcrypt-1.12.2.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libgcrypt-1.12.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-padlock-support \
	--enable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
