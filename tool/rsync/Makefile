COMMENT = A fast, versatile, remote (and local) file-copying tool.
VERSION = 3.4.1
REVISION = 0
CATEGORIES = tool
PKGNAME = rsync
HOMEPAGE = https://rsync.samba.org
ARCHIVE = rsync-3.4.1.tar.gz
LINK = https://download.samba.org/pub/rsync/src/rsync-3.4.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = rsync-3.4.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-zstd \
	--disable-debug \
	--disable-xxhash \
	--disable-lz4 \
	--with-protected-args \
	--without-included-zlib \
	--without-included-popt \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
