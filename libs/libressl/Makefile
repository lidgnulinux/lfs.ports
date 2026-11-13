COMMENT = A version of the TLS/crypto stack.
VERSION = 4.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libressl
HOMEPAGE = https://www.libressl.org
ARCHIVE = libressl-${VERSION}.tar.gz
LINK = https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libressl-${VERSION}
BUILD_OPTION = -DENABLE_HARDENING=TRUE -DENABLE_NC=TRUE \
	-DOPENSSLDIR=/etc/ssl -DBUILD_SHARED_LIBS=TRUE 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
