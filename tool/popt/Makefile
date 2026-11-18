COMMENT = A commandline option parser
VERSION = 1.19
REVISION = 2
CATEGORIES = tool
PKGNAME = popt
HOMEPAGE = https://github.com/rpm-software-management/popt
ARCHIVE = popt-${VERSION}.tar.gz
LINK = https://ftp.osuosl.org/pub/rpm/popt/releases/popt-1.x/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = popt-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
