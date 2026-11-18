COMMENT = The Linux-native asynchronous I/O facility (aio) library
VERSION = 0.3.113
REVISION = 0
CATEGORIES = libs
PKGNAME = libaio
HOMEPAGE = https://codeberg.org/jmoyer/libaio
ARCHIVE = libaio-${VERSION}.tar.gz
LINK = https://codeberg.org/jmoyer/libaio/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libaio

prepare:
	sed 's/-Werror//' -i ${BUILDDIR}/harness/Makefile
	rm -frv ${BUILDDIR}/harness/cases/20.t
	rm -frv ${BUILDDIR}/harness/cases/21.t

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
