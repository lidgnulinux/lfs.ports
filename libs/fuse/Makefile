COMMENT = A library that makes it possible to implement a filesystem in a userspace program.
VERSION = 2.9.9
REVISION = 0
CATEGORIES = libs
PKGNAME = fuse
HOMEPAGE = https://github.com/libfuse/libfuse/
ARCHIVE = fuse-2.9.9.tar.gz
LINK = https://github.com/libfuse/libfuse/releases/download/fuse-2.9.9/fuse-2.9.9.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = fuse-2.9.9
AUTO_CONF = (cd ${BUILDDIR} && UDEV_RULES_PATH='/usr/lib/udev/rules.d' \
	./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static \
	--enable-shared \
	--disable-example \
	--enable-lib \
	--enable-util \
	--bindir=/bin \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
