COMMENT = A SSH (version 2) library.
VERSION = 1.11.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libssh2
HOMEPAGE = https://www.libssh2.org
ARCHIVE = libssh2-${VERSION}.tar.gz
LINK = https://www.libssh2.org/download/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libssh2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-crypto=openssl \
	--with-libz)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
