COMMENT = Small library with error codes.
VERSION = 1.59
REVISION = 0
CATEGORIES = libs
PKGNAME = libgpg_error
HOMEPAGE = https://www.gnupg.org
ARCHIVE = libgpg-error-${VERSION}.tar.gz
LINK = https://www.gnupg.org/ftp/gcrypt/libgpg-error/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libgpg-error-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-install-gpg-error-config)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
