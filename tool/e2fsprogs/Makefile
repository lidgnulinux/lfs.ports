COMMENT = Standard Ext2/3/4 filesystem utilities
VERSION = 1.47.3
REVISION = 0
CATEGORIES = tool
PKGNAME = e2fsprogs
HOMEPAGE = https://e2fsprogs.sourceforge.net/
ARCHIVE = v1.47.3.tar.gz
LINK = https://github.com/tytso/e2fsprogs/archive/v1.47.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = e2fsprogs-1.47.3
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--with-udev-rules-dir=no \
	--enable-elf-shlibs \
	--enable-symlink-install \
	--disable-fsck \
	--disable-uuidd \
	--disable-libuuid \
	--disable-libblkid \
	--disable-nls \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
