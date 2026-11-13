COMMENT = small SSH 2 client/server designed for small memory environments
VERSION = 2026.94
REVISION = 0
CATEGORIES = net
PKGNAME = dropbear
HOMEPAGE = https://matt.ucc.asn.au/dropbear/dropbear.html
SRCCD = archive
ARCHIVE = dropbear-${VERSION}.tar.bz2
LINK = https://matt.ucc.asn.au/dropbear/releases/${ARCHIVE}
BUILD = make
BUILDDIR = ${PKGNAME}-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info)
MAKEOPT = PROGRAMS='dropbear dropbearkey dbclient dropbearconvert scp'
GRAFT = no

prepare:
	cp -fv localoptions.h ${BUILDDIR}/
	cd ${BUILDDIR}/; autoreconf

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
