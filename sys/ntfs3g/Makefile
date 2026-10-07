COMMENT = Drivers and utilities for the NTFS file system.
VERSION = 2026.9.28
REVISION = 0
CATEGORIES = sys
PKGNAME = ntfs3g
HOMEPAGE = https://www.tuxera.com/community/open-source-ntfs-3g/
ARCHIVE = ntfs-3g_ntfsprogs-${VERSION}.tgz
LINK = https://tuxera.com/opensource/ntfs-3g_ntfsprogs-${VERSION}.tgz
SRCCD = archive
BUILD = make
BUILDDIR = ntfs-3g-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=no \
	--enable-extras \
	--enable-posix-acls \
	--enable-xattr-mappings \
	--enable-crypto \
	--with-fuse=internal \
	--without-hd \
	--disable-ldconfig \
	--build=x86_64-pc-linux-musl \
	rootbindir=/usr/bin \
	rootsbindir=/usr/sbin \
	rootlibdir=/usr/lib)
MAKEOPT = rootbindir=/usr/bin \
	rootsbindir=/usr/sbin \
	rootlibdir=/usr/lib

prepare:
	sed -i 's#$(DESTDIR)/sbin#$(DESTDIR)/usr/sbin#g' ${BUILDDIR}/src/Makefile.in

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
