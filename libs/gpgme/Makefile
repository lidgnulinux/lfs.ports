COMMENT = GnuPG made easy.
VERSION = 1.24.2
REVISION = 0
CATEGORIES = libs
PKGNAME = gpgme
HOMEPAGE = https://www.gnupg.org
ARCHIVE = gpgme-1.24.2.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-1.24.2.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = gpgme-1.24.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--disable-dependency-tracking \
	--enable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
