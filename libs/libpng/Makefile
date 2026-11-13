COMMENT = Portable Network Graphics library
VERSION = 1.6.59
REVISION = 0
CATEGORIES = libs
PKGNAME = libpng
HOMEPAGE = http://www.libpng.org
ARCHIVE = libpng-${VERSION}.tar.gz
LINK = https://downloads.sourceforge.net/libpng/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libpng-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes)
MAKEOPT =

prepare:
	zcat libpng-1.6.58-apng.patch.gz | patch -p1 -d ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
