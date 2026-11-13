COMMENT = Transport-Independent RPC library. 
VERSION = 1.3.5
REVISION = 0
CATEGORIES = libs
PKGNAME = libtirpc
HOMEPAGE = https://sourceforge.net/projects/libtirpc/
ARCHIVE = libtirpc-1.3.5.tar.bz2
LINK = https://sourceforge.net/projects/libtirpc/files/libtirpc/1.3.5/libtirpc-1.3.5.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libtirpc-1.3.5
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-gssapi \
	--disable-symvers \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
