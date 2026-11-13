COMMENT = X.Org font utilities
VERSION = 1.4.2
REVISION = 0
CATEGORIES = misc
PKGNAME = font_util
HOMEPAGE = https://xorg.freedesktop.org/
SRCCD = archive
ARCHIVE = font-util-${VERSION}.tar.xz
LINK = https://xorg.freedesktop.org/releases/individual/font/${ARCHIVE}
BUILD = make
BUILDDIR = font-util-${VERSION}
AUTO_CONF = (cd ${BUILDDIR}; ./configure --prefix=/usr --mandir=/usr/share/man \
	--with-mapdir=/usr/share/fonts/util --with-fontrootdir=/usr/share/fonts)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
