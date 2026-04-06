COMMENT = Simple markdown translator
VERSION = 3.0.1.cf4249d46
_REV = f4249d46942ac6c52a8abc3e31ea990cad5b6a22
REVISION = 0
CATEGORIES = doc
PKGNAME = lowdown
HOMEPAGE = https://kristaps.bsd.lv/lowdown/
ARCHIVE = f4249d46942ac6c52a8abc3e31ea990cad5b6a22.tar.gz
LINK = https://github.com/kristapsdz/lowdown/archive/${ARCHIVE}
SRCCD = archive
BUILD = bmake
BUILDDIR = lowdown-f4249d46942ac6c52a8abc3e31ea990cad5b6a22
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
