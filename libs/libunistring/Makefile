COMMENT = A library that provides functions for manipulating Unicode strings.
VERSION = 1.5
REVISION = 0
CATEGORIES = libs
PKGNAME = libunistring
HOMEPAGE = https://www.gnu.org/software/libunistring/
ARCHIVE = libunistring-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/libunistring/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libunistring-${VERSION}
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
