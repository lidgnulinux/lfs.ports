COMMENT = A utility to show the full path of commands
VERSION = 2.25
REVISION = 0
CATEGORIES = tool
PKGNAME = which
HOMEPAGE = https://savannah.gnu.org/projects/which
SRCCD = archive
ARCHIVE = which-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/which/${ARCHIVE}
BUILD = make
BUILDDIR = which-${VERSION}
AUTO_CONF = (cd ${BUILDDIR}; ./configure --prefix=/usr)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/gcc15.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
