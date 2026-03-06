COMMENT = Simple markdown translator
VERSION = 2.0.4.c5ac0ad96
_REV = 5ac0ad9664a065f03f0411bba6b9cb3439b1edb1
REVISION = 0
CATEGORIES = doc
PKGNAME = lowdown
HOMEPAGE = https://kristaps.bsd.lv/lowdown/
ARCHIVE = 5ac0ad9664a065f03f0411bba6b9cb3439b1edb1.tar.gz
LINK = https://github.com/kristapsdz/lowdown/archive/${ARCHIVE}
SRCCD = archive
BUILD = bmake
BUILDDIR = lowdown-5ac0ad9664a065f03f0411bba6b9cb3439b1edb1
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
