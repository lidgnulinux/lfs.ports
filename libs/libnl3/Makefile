COMMENT = Library for applications dealing with netlink sockets
VERSION = 3.11.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libnl3
HOMEPAGE = http://www.infradead.org/~tgr/libnl/
ARCHIVE = libnl-3.11.0.tar.gz
LINK = https://github.com/thom311/libnl/releases/download/libnl3_11_0/libnl-3.11.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libnl-3.11.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--enable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -vif ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
