COMMENT = CMS and X.509 access library.
VERSION = 1.8.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libksba
HOMEPAGE = https://www.gnupg.org
ARCHIVE = libksba-${VERSION}.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/libksba/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libksba-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
