COMMENT = Convert xml to many other formats
VERSION = 0.0.29
REVISION = 0
CATEGORIES = tool
PKGNAME = xmlto
HOMEPAGE = https://pagure.io/xmlto/
ARCHIVE = xmlto-${VERSION}.tar.gz
LINK = https://anduin.linuxfromscratch.org/BLFS/xmlto/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = xmlto-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--mandir=/usr/share/man)

prepare:
	autoreconf -fvi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
