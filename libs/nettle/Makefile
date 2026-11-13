COMMENT = A low-level cryptographic library.
VERSION = 4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = nettle
HOMEPAGE = https://www.lysator.liu.se/~nisse/nettle/
ARCHIVE = nettle-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/nettle/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nettle-${VERSION}
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
