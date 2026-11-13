COMMENT = GnuPG made easy.
VERSION = 2.2.0
REVISION = 0
CATEGORIES = libs
PKGNAME = gpgme
HOMEPAGE = https://www.gnupg.org
ARCHIVE = gpgme-${VERSION}.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/gpgme/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = gpgme-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--disable-dependency-tracking \
	--enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
