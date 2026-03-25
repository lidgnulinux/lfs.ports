COMMENT = Imlib2 is the (intended) successor to Imlib.
VERSION = 1.12.6
REVISION = 1
CATEGORIES = libs
PKGNAME = imlib2
HOMEPAGE = https://www.enlightenment.org/
ARCHIVE = imlib2-1.12.6.tar.gz
LINK = https://sourceforge.net/projects/enlightenment/files/imlib2-src/1.12.6/imlib2-1.12.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = imlib2-1.12.6
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-id3 --with-x \
	--enable-amd64 --with-bzip2 \
	--with-id3 --with-jpeg --with-tiff \
	--with-heif --build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
