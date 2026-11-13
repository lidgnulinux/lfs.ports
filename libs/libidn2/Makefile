COMMENT = An implementation of IDNA2008.
VERSION = 2.3.8
REVISION = 0
CATEGORIES = libs
PKGNAME = libidn2
HOMEPAGE = https://www.gnu.org/software/libidn/
ARCHIVE = libidn2-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/libidn/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libidn2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes \
	--disable-doc)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
