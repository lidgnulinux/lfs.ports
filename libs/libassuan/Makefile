COMMENT = IPC library used by GnuPG.
VERSION = 3.0.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libassuan
HOMEPAGE = https://www.gnupg.org
ARCHIVE = libassuan-${VERSION}.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-${VERSION}.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libassuan-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
