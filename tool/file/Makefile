COMMENT = File type identification utility
VERSION = 5.48
REVISION = 0
CATEGORIES = tool
PKGNAME = file
HOMEPAGE = https://www.darwinsys.com/file/
ARCHIVE = file-${VERSION}.tar.gz
LINK = https://astron.com/pub/file/file-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = file-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--datadir=/usr/share \
	--enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
