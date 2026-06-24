COMMENT = The GnuPG version 2.
VERSION = 2.4.9
REVISION = 0
CATEGORIES = libs
PKGNAME = gnupg
HOMEPAGE = https://www.gnupg.org
ARCHIVE = gnupg-2.4.9.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.4.9.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = gnupg-2.4.9
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	rm ${BUILDDIR}/tests/gpgme/setup.scm
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	cd ${BUILDDIR}; autoreconf -vif

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
