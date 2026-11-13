COMMENT = Simple markdown translator
VERSION = 3.2.1.c6205433f
_SHA = 6205433fd73728965acb8259025e396e5d5958b5
REVISION = 0
CATEGORIES = doc
PKGNAME = lowdown
HOMEPAGE = https://kristaps.bsd.lv/lowdown/
ARCHIVE = ${_SHA}.tar.gz
LINK = https://github.com/kristapsdz/lowdown/archive/${ARCHIVE}
SRCCD = archive
BUILD = bmake
BUILDDIR = lowdown-${_SHA}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	PREFIX=/usr \
	MANDIR=/usr/share/man)
MAKEOPT =

prepare:

post_build:
	bmake -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} \
		${MAKEOPT} DESTDIR=${DESTDIR} install_libs

post-install:

include /usr/share/mk/lfs.port.mk
