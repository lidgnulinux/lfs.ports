COMMENT = Console-based MPEG Audio Player for Layers 1, 2 and 3
VERSION = 1.33.7
REVISION = 0
CATEGORIES = audio
PKGNAME = mpg123
HOMEPAGE = https://www.mpg123.org/
ARCHIVE = mpg123-${VERSION}.tar.bz2
LINK = https://www.mpg123.org/download/mpg123-${VERSION}.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = mpg123-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-dependency-tracking \
	--with-pic \
	--with-optimization=0 \
	--with-audio="alsa oss")
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
