COMMENT = Dynamic menu for X
VERSION = 5.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = dmenu
HOMEPAGE = https://tools.suckless.org/dmenu/
ARCHIVE = dmenu-${VERSION}.tar.gz
LINK = https://dl.suckless.org/tools/dmenu-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dmenu-${VERSION}
MAKEOPT = X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 \
	FREETYPEINC=/usr/include/freetype2

prepare:
	vim ${BUILDDIR}/config.def.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
