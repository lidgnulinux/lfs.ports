COMMENT = Open Source library project for developers who would like to support popular graphics image formats.
VERSION = 3.18.0
REVISION = 0
CATEGORIES = libs
PKGNAME = freeimage
HOMEPAGE = https://freeimage.sourceforge.net/
ARCHIVE = FreeImage3180.zip
LINK = https://downloads.sourceforge.net/freeimage/FreeImage3180.zip
SRCCD = archive
BUILD = make
BUILDDIR = FreeImage
MAKEOPT =
CFLAGS = -std=gnu89
export CFLAGS

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	find ${BUILDDIR} -type f -exec dos2unix -q -s {} \;

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
