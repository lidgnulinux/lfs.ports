COMMENT = A highly portable C library that encodes or decodes an ASN.1 schema.
VERSION = 4.21.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libtasn1
HOMEPAGE = https://www.gnu.org/software/libtasn1
ARCHIVE = libtasn1-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/libtasn1/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libtasn1-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
