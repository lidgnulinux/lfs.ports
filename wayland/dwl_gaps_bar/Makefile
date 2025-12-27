COMMENT = dwm for Wayland
VERSION = v0.8-dev
REVISION = 0
CATEGORIES = wayland
PKGNAME = dwl_gaps_bar
HOMEPAGE = https://codeberg.org/dwl/dwl
ARCHIVE = git
LINK = https://codeberg.org/dwl/dwl
SRCCD = git
BUILD = make
BUILDDIR = dwl

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_vanity-gaps_bar.patch
	cp -r drwl.h ${BUILDDIR}

adjust:
	${EDITOR} ${BUILDDIR}/config.def.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
