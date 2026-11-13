COMMENT = Multipurpose relay
VERSION = 1.8.1.3
REVISION = 0
CATEGORIES = net
PKGNAME = socat
HOMEPAGE = http://www.dest-unreach.org/socat/
ARCHIVE = socat-${VERSION}.tar.gz
LINK = http://www.dest-unreach.org/socat/download/socat-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = socat-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
