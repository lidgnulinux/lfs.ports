COMMENT = A collection of routines used to create and manipulate MNG format graphics files
VERSION = 2.0.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libmng
HOMEPAGE = http://www.libmng.com/
ARCHIVE = libmng-${VERSION}.tar.gz
LINK = https://downloads.sourceforge.net/sourceforge/libmng/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libmng-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared \
	--disable-static \
	--with-zlib \
	--with-jpeg \
	--with-lcms2 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	autoreconf --force --install ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
