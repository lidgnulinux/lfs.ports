COMMENT = Library for applications dealing with netlink sockets
VERSION = 3.12.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libnl3
HOMEPAGE = http://www.infradead.org/~tgr/libnl/
ARCHIVE = libnl-${VERSION}.tar.gz
LINK = https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libnl-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
