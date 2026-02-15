COMMENT = X11 client-side library
VERSION = 1.8.13
REVISION = 0
CATEGORIES = libs
PKGNAME = libX11
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = libX11-${VERSION}.tar.xz
LINK = https://www.x.org/releases/individual/lib/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libX11-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--disable-xf86bigfont) 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
