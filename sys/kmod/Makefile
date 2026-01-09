COMMENT = Linux kernel module handling.
VERSION = 34.2
REVISION = 0
CATEGORIES = sys
PKGNAME = kmod
HOMEPAGE = https://git.kernel.org/?p=utils/kernel/kmod/kmod.git
ARCHIVE = kmod-34.2.tar.xz
LINK = https://kernel.org/pub/linux/utils/kernel/kmod/kmod-34.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = kmod-34.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-tools \
	--with-rootlibdir=/usr/lib \
	--with-openssl \
	--with-zlib \
	--with-xz \
	--with-zstd \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	mkdir -p package/usr/sbin

	for t in depmod insmod lsmod modinfo modprobe rmmod; do \
		( cd package/usr/sbin && ln -sf ../bin/kmod $$t ); \
	done

	( cd package/usr/bin && ln -sf ../bin/kmod lsmod )

post-install:

include /usr/share/mk/lfs.port.mk
