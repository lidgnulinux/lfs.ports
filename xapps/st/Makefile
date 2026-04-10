COMMENT = st is a simple terminal implementation for X.
VERSION = 0.9.3
REVISION = 0
CATEGORIES = xapps
PKGNAME = st
HOMEPAGE = https://st.suckless.org
ARCHIVE = st-0.9.3.tar.gz
LINK = https://dl.suckless.org/st/st-0.9.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = st-0.9.3
MAKEOPT = X11INC=/usr/include/X11
EDITOR = vim

prepare:
	sed -i '/tic/d' ${BUILDDIR}/Makefile

configure:
	${EDITOR} st-0.9.3/config.def.h

post_build:
	$(MAKE) strip

post-install:

include /usr/share/mk/lfs.port.mk
include /usr/share/mk/strip.mk
