COMMENT = busybox
VERSION = 1.38
REVISION = 0
CATEGORIES = sys
PKGNAME = busybox
HOMEPAGE = https://busybox.net
ARCHIVE = busybox-1.38.0.tar.bz2
LINK = https://busybox.net/downloads/busybox-1.38.0.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = busybox-1.38.0
MAKEOPT = CONFIG_PREFIX=$(PWD)/package/opt
MAKEFLAGS += -j1

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	make -C ${BUILDDIR} -j1 mrproper
	make -C ${BUILDDIR} defconfig

configure:
	make -C ${BUILDDIR} menuconfig

post_build:
	mkdir -p package/usr/share/busybox
	cp -r ${BUILDDIR}/.config package/usr/share/busybox/config

post-install:

include /usr/share/mk/lfs.port.mk
