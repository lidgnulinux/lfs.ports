COMMENT = Multipurpose relay
VERSION = 1.8.1.0
REVISION = 0
CATEGORIES = net
PKGNAME = socat
HOMEPAGE = http://www.dest-unreach.org/socat/
ARCHIVE = socat-1.8.1.0.tar.gz
LINK = http://www.dest-unreach.org/socat/download/socat-1.8.1.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = socat-1.8.1.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
CFLAGS = -Wno-int-conversion
export CFLAGS

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
