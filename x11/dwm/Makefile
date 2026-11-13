COMMENT = dwm - dynamic window manager (gaps & barpadding patch applied)
VERSION = 6.8
REVISION = 4
CATEGORIES = x11
PKGNAME = dwm
HOMEPAGE = https://dwm.suckless.org
ARCHIVE = dwm-${VERSION}.tar.gz
LINK = https://dl.suckless.org/dwm/dwm-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dwm-${VERSION}
MAKEOPT = X11INC=/usr/include/X11 \
	X11LIB=/usr/lib/X11 \
	FREETYPEINC=/usr/include/freetype2
EDITOR = vim

configure:
	${EDITOR} ${BUILDDIR}/config.def.h

prepare:
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/gaps_barpadding.diff

post_build:
	mkdir -p package/usr/share/dwm/{patch,header}
	cp -r $(CURDIR)/gaps_barpadding.diff package/usr/share/dwm/patch
	cp -r $(CURDIR)/dwm-toggletopbar-barpadding-6.4.diff package/usr/share/dwm/patch
	cp -r ${BUILDDIR}/config.h package/usr/share/dwm/header/

post-install:

include /usr/share/mk/lfs.port.mk
