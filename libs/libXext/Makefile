COMMENT = Library for common extensions to the X11 protocol.
VERSION = 1.3.7
REVISION = 0
CATEGORIES = libs
PKGNAME = libXext
HOMEPAGE = https://www.x.org
ARCHIVE = libXext-${VERSION}.tar.gz
LINK = https://www.x.org/releases/individual/lib/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libXext-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--enable-static \
	--with-xmlto \
	--without-fop)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
