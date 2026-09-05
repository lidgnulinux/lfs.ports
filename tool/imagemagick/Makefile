COMMENT = Collection of tools and libraries for many image formats
VERSION = 7.1.2.30
_V = $(shell sed -E 's/(.*)\./\1-/'<<< ${VERSION})
REVISION = 0
CATEGORIES = tool
PKGNAME = imagemagick
HOMEPAGE = https://imagemagick.org/
ARCHIVE = ImageMagick-${_V}.tar.xz
LINK = https://download.imagemagick.org/archive/releases//ImageMagick-${_V}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = ImageMagick-${_V}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--with-gslib \
	--with-modules \
	--with-perl \
	--with-perl-options="INSTALLDIRS=vendor INSTALLVENDORARCH=/usr/lib/perl5/vendor_perl NO_PACKLIST=1 NO_PERLLOCAL=1" \
	--with-png \
	--with-threads \
	--with-tiff \
	--with-x \
	--with-xml \
	--with-heic \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
