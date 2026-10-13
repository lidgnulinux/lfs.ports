COMMENT = FUSE based filesystem for mounting compressed archives
VERSION = 0.9.1
REVISION = 0
CATEGORIES = tool
PKGNAME = archivemount
HOMEPAGE = https://github.com/bramp/archivemount
ARCHIVE = archivemount-0.9.1.tar.gz
LINK = http://www.cybernoia.de/software/archivemount/archivemount-0.9.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = archivemount-0.9.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -vif ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
