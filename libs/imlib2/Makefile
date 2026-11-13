COMMENT = Imlib2 is the (intended) successor to Imlib.
VERSION = 1.12.7
REVISION = 0
CATEGORIES = libs
PKGNAME = imlib2
HOMEPAGE = https://www.enlightenment.org/
ARCHIVE = imlib2-${VERSION}.tar.gz
LINK = https://sourceforge.net/projects/enlightenment/files/imlib2-src/${VERSION}/imlib2-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = imlib2-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc/imlib2 \
	--libdir=/usr/lib \
	--with-id3 --with-x \
	--enable-amd64 --with-bzip2 \
	--with-id3 --with-jpeg --with-tiff)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
