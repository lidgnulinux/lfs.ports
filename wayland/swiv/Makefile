COMMENT = A simple Wayland image viewer, forked from swiv 
VERSION = 0.c17ec70c4
_SHA = 17ec70c4c763588bdfc824a59ce81fa38b54764b
REVISION = 0
CATEGORIES = wayland
PKGNAME = swiv
HOMEPAGE = https://git.sr.ht/~pfr/swiv
SRCCD = archive
ARCHIVE = ${_SHA}.tar.gz
LINK = ${HOMEPAGE}/archive/${ARCHIVE}
BUILD = make
BUILDDIR = swiv-${_SHA}
STRIP = no

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/00_makefile_fix.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
