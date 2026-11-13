COMMENT = A framework for testing other programs
VERSION = 1.6.3
REVISION = 0
CATEGORIES = devel
PKGNAME = dejagnu
HOMEPAGE = https://www.gnu.org/software/dejagnu/
ARCHIVE = dejagnu-1.6.3.tar.gz
LINK = https://ftp.gnu.org/pub/gnu/dejagnu/dejagnu-1.6.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dejagnu-1.6.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
