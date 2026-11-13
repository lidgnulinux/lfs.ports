COMMENT = Library for parsing, editing, and saving EXIF data.
VERSION = 0.6.26
REVISION = 0
CATEGORIES = libs
PKGNAME = libexif
HOMEPAGE = https://libexif.github.io
ARCHIVE = libexif-${VERSION}.tar.bz2
LINK = https://github.com/libexif/libexif/releases/download/v${VERSION}/libexif-${VERSION}.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libexif-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
