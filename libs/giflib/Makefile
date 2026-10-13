COMMENT = A library for reading and writing GIF images
VERSION = 5.2.2
REVISION = 0
CATEGORIES = libs
PKGNAME = giflib
HOMEPAGE = https://sourceforge.net/projects/giflib/
ARCHIVE = giflib-5.2.2.tar.gz
LINK = https://downloads.sourceforge.net/sourceforge/giflib/giflib-5.2.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = giflib-5.2.2
MAKEOPT =
CFLAGS = -fPIC
export CFLAGS

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
