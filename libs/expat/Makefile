COMMENT = XML Parser library written in C
VERSION = 2.7.5
REVISION = 0
CATEGORIES = libs
PKGNAME = expat
HOMEPAGE = https://libexpat.github.io/
ARCHIVE = expat-2.7.5.tar.bz2
LINK = https://downloads.sourceforge.net/project/expat/expat/2.7.5/expat-2.7.5.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = expat-2.7.5
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
