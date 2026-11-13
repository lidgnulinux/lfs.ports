COMMENT = A new portable thread library.
VERSION = 1.8
REVISION = 0
CATEGORIES = libs
PKGNAME = npth
HOMEPAGE = https://www.gnupg.org
ARCHIVE = npth-1.8.tar.bz2
LINK = https://www.gnupg.org/ftp/gcrypt/npth/npth-1.8.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = npth-1.8
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
