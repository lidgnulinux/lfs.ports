.ONESHELL:
SHELL := /bin/sh

COMMENT = Iconic font set
VERSION = 7.1.0
REVISION = 0
CATEGORIES = font
PKGNAME = awesome.font7
HOMEPAGE = https://fontawesome.com
ARCHIVE = font-awesome-7.1.0.tar.gz
LINK = https://github.com/FortAwesome/Font-Awesome/archive/7.1.0/font-awesome-7.1.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = Font-Awesome-7.1.0

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:
	install -d "pkg/usr/share/fonts/WOFF2"
	install -m 644 ${BUILDDIR}/webfonts/*.woff2 "pkg/usr/share/fonts/WOFF2"
	install -Dm 644 ${BUILDDIR}/LICENSE.txt \
		"pkg/usr/share/licenses/${PKGNAME}-woff2/LICENSE.txt"

	install -d "pkg/usr/share/fonts/OTF"
	install -m 644 ${BUILDDIR}/otfs/*.otf "pkg/usr/share/fonts/OTF"
	install -Dm 644 ${BUILDDIR}/LICENSE.txt \
		"pkg/usr/share/licenses/${PKGNAME}-otf/LICENSE.txt"

post_build:

post-install:
	@cat <<EOM

	:: Starting from version 7.0.0, the Font Awesome upstream no longer includes '.ttf' webfonts
	and instead provides them in '.woff2' format, which is now the standard for webfont delivery.
	
	The 'ttf-font-awesome' package has therefore been replaced by the 'woff2-font-awesome' one.

	If your project(s) or configuration(s) still depend on '.ttf' files, please update
	them to use the '.woff2' format instead.

	See https://fontawesome.com/changelog for more details.
	EOM

include /usr/share/mk/lfs.port.mk
