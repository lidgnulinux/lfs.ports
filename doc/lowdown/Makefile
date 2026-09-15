COMMENT = Simple markdown translator
VERSION = 3.2.1.c1fd1750a
_SHA = 1fd1750abc899db6ade48b558e9112a4f04b9260
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
