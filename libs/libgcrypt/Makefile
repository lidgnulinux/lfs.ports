COMMENT = Basic cryptographic library.
VERSION = 1.12.4
REVISION = 0
CATEGORIES = libs
PKGNAME = libgcrypt
HOMEPAGE = https://www.gnupg.org
ARCHIVE = libgcrypt-${VERSION}.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/libgcrypt/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libgcrypt-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-padlock-support \
	--enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
