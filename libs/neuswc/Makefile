COMMENT = slightly less simple wayland compositor library 
VERSION = 0.c5b7d9a1f
REVISION = 0
CATEGORIES = libs
PKGNAME = neuswc
HOMEPAGE = https://git.sr.ht/~shrub900/neuswc
SRCCD = git
BUILD = custom
BUILDDIR = neuswc

prepare:

custom-build:
	bmake -C ${BUILDDIR}
	bmake -C ${BUILDDIR} DESTDIR="$(PWD)/pkg" install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
