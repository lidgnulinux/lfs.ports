COMMENT = The GnuPG version 2.
VERSION = 2.5.24
REVISION = 0
CATEGORIES = libs
PKGNAME = gnupg
HOMEPAGE = https://www.gnupg.org
ARCHIVE = gnupg-${VERSION}.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/gnupg/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = gnupg-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
