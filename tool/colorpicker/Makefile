COMMENT = simplest command line color picker
VERSION = 0.r23.c3b5076f5
REVISION = 1
CATEGORIES = tool
PKGNAME = colorpicker
HOMEPAGE = https://github.com/ym1234/colorpicker
LINK = https://github.com/ym1234/colorpicker
SRCCD = git
BUILD = make
BUILDDIR = colorpicker
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
