COMMENT = set of some small useful utilities that use the proc filesystem
VERSION = 23.7
REVISION = 0
CATEGORIES = sys
PKGNAME = psmisc
HOMEPAGE = https://gitlab.com/psmisc/psmisc
ARCHIVE = psmisc-23.7.tar.xz
LINK = https://downloads.sourceforge.net/psmisc/psmisc-23.7.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = psmisc-23.7
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
