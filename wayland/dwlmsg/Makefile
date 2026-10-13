COMMENT = Send ipc messages to dwl.
VERSION = 0.c7be655ef
REVISION = 2
_REV = 7be655ef47c80136c4a4132767423c1db5085d02
CATEGORIES = wayland
PKGNAME = dwlmsg
HOMEPAGE = https://codeberg.org/notchoc/dwlmsg
ARCHIVE = ${_REV}.tar.gz 
LINK = https://codeberg.org/notchoc/dwlmsg/archive/${ARCHIVE} 
SRCCD = archive
BUILD = make
BUILDDIR = dwlmsg

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:
	mkdir -p package/usr/share/doc/dwlmsg
	cp -r ${BUILDDIR}/README package/usr/share/doc/dwlmsg

post-install:

include /usr/share/mk/lfs.port.mk
