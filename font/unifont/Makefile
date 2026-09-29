COMMENT = GNU Unifont glyphs
VERSION = 18.0.01
REVISION = 0
CATEGORIES = font
PKGNAME = unifont
HOMEPAGE = https://unifoundry.com/unifont/index.html
ARCHIVE = unifont-${VERSION}.tar.gz
LINK = https://unifoundry.com/pub/unifont/unifont-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = unifont-${VERSION}
MAKEOPT =
override PREFIX="${DESTDIR}/usr"

prepare:
	$(MAKE) -C ${BUILDDIR} clean

post_build:
	cd package/usr/share/unifont;	\
		rm -r html ChangeLog* INSTALL* NEWS* README* ./*.pdf
	install -Dm644 package/usr/share/info/*.info.* package/usr/share/unifont

post-install:

include /usr/share/mk/lfs.port.mk
