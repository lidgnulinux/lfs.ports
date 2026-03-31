COMMENT = Portable Network Graphics library
VERSION = 1.6.56
REVISION = 0
CATEGORIES = libs
PKGNAME = libpng
HOMEPAGE = http://www.libpng.org
ARCHIVE = libpng-1.6.56.tar.gz
LINK = https://downloads.sourceforge.net/libpng/libpng-1.6.56.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libpng-1.6.56
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/libpng-1.6.55-apng.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
