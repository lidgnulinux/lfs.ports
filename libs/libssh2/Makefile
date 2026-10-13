COMMENT = A SSH (version 2) library.
VERSION = 1.11.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libssh2
HOMEPAGE = https://www.libssh2.org
ARCHIVE = libssh2-1.11.1.tar.gz
LINK = https://www.libssh2.org/download/libssh2-1.11.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libssh2-1.11.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-crypto=openssl \
	--with-libz \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
