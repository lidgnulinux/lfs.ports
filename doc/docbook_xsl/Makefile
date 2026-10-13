COMMENT = The DocBook XSL Stylesheets.
VERSION = 1.79.2
REVISION = 0
CATEGORIES = doc
PKGNAME = docbook_xsl
HOMEPAGE = https://www.docbook.org
ARCHIVE = docbook-xsl-nons-1.79.2.tar.bz2
LINK = https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2
SRCCD = archive
BUILD = custom
BUILDDIR = docbook-xsl-nons-1.79.2

prepare:
	patch -Np1 -d ${BUILDDIR} -i $(CURDIR)/765567_non-recursive_string_subst.patch
	mkdir -p pkg/usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}
	mkdir -p pkg/etc/xml

custom-build:
	cd ${BUILDDIR} && cp -R VERSION assembly common eclipse epub epub3 extensions fo \
		highlighting html htmlhelp images javahelp lib manpages params profiling \
		roundtrip slides template tests tools webhelp website xhtml xhtml-1_1 xhtml5 \
		../pkg/usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}

	cd pkg/usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION} && \
		ln -s VERSION VERSION.xsl

post_build:

post-install:
	xmlcatalog --noout --add "rewriteSystem" \
		"http://cdn.docbook.org/release/xsl-nons/${VERSION}" \
		"file://usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

	xmlcatalog --noout --add "rewriteURI" \
		"http://cdn.docbook.org/release/xsl-nons/${VERSION}" \
		"file://usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

	xmlcatalog --noout --add "rewriteSystem" \
		"http://cdn.docbook.org/release/xsl-nons/current" \
		"file://usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

	xmlcatalog --noout --add "rewriteURI" \
		"http://cdn.docbook.org/release/xsl-nons/current" \
		"file://usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

	xmlcatalog --noout --add "rewriteSystem" \
		"http://docbook.sourceforge.net/release/xsl/current" \
		"/usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

	xmlcatalog --noout --add "rewriteURI" \
		"http://docbook.sourceforge.net/release/xsl/current" \
		"/usr/share/xml/docbook/xsl-stylesheets-nons-${VERSION}" \
		/etc/xml/catalog

include /usr/share/mk/lfs.port.mk
