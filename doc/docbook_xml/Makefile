COMMENT = A widely used XML scheme for writing documentation and help
VERSION = 4.5
REVISION = 0
CATEGORIES = doc
PKGNAME = docbook_xml
HOMEPAGE = https://scrollkeeper.sourceforge.net/docbook.shtml
ARCHIVE = docbook-xml-4.5.zip
LINK = https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip
SRCCD = archive
BUILD = custom
STRIP = no

prepare:
	mkdir pkg source
	bsdunzip docbook-xml-4.5.zip -d source
	install -v -d -m755 pkg/usr/share/xml/docbook/xml-dtd-4.5
	install -v -d -m755 pkg/etc/xml

custom-build:
	cd source && cp -v -af --no-preserve=ownership docbook.cat *.dtd ent/ *.mod \
		../pkg/usr/share/xml/docbook/xml-dtd-4.5
	xmlcatalog --noout --create pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//DTD DocBook XML V4.5//EN" \
		"http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//DTD DocBook XML CALS Table Model V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/calstblx.dtd" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/soextblx.dtd" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ELEMENTS DocBook XML Information Pool V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/dbpoolx.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ELEMENTS DocBook XML Document Hierarchy V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/dbhierx.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ELEMENTS DocBook XML HTML Tables V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/htmltblx.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ENTITIES DocBook XML Notations V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/dbnotnx.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ENTITIES DocBook XML Character Entities V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/dbcentx.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "public" \
		"-//OASIS//ENTITIES DocBook XML Additional General Entities V4.5//EN" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5/dbgenent.mod" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "rewriteSystem" \
		"http://www.oasis-open.org/docbook/xml/4.5" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --add "rewriteURI" \
		"http://www.oasis-open.org/docbook/xml/4.5" \
		"file:///usr/share/xml/docbook/xml-dtd-4.5" \
		pkg/etc/xml/docbook

	xmlcatalog --noout --create pkg/etc/xml/catalog

	xmlcatalog --noout --add "delegatePublic" \
		"-//OASIS//ENTITIES DocBook XML" \
		"file:///etc/xml/docbook" \
		pkg/etc/xml/catalog

	xmlcatalog --noout --add "delegatePublic" \
		"-//OASIS//DTD DocBook XML" \
		"file:///etc/xml/docbook" \
		pkg/etc/xml/catalog

	xmlcatalog --noout --add "delegateSystem" \
		"http://www.oasis-open.org/docbook/" \
		"file:///etc/xml/docbook" \
		pkg/etc/xml/catalog

	xmlcatalog --noout --add "delegateURI" \
		"http://www.oasis-open.org/docbook/" \
		"file:///etc/xml/docbook" \
		pkg/etc/xml/catalog

	for DTDVERSION in 4.1.2 4.2 4.3 4.4; do \
		xmlcatalog --noout --add "public" \
			"-//OASIS//DTD DocBook XML V$${DTDVERSION}//EN" \
			"http://www.oasis-open.org/docbook/xml/$${DTDVERSION}/docbookx.dtd" \
			pkg/etc/xml/docbook; \
		xmlcatalog --noout --add "rewriteSystem" \
			"http://www.oasis-open.org/docbook/xml/$${DTDVERSION}" \
			"file:///usr/share/xml/docbook/xml-dtd-4.5" \
			pkg/etc/xml/docbook; \
		xmlcatalog --noout --add "rewriteURI" \
			"http://www.oasis-open.org/docbook/xml/$${DTDVERSION}" \
			"file:///usr/share/xml/docbook/xml-dtd-4.5" \
			pkg/etc/xml/docbook; \
		xmlcatalog --noout --add "delegateSystem" \
			"http://www.oasis-open.org/docbook/xml/$${DTDVERSION}/" \
			"file:///etc/xml/docbook" \
			pkg/etc/xml/catalog; \
		xmlcatalog --noout --add "delegateURI" \
			"http://www.oasis-open.org/docbook/xml/$${DTDVERSION}/" \
			"file:///etc/xml/docbook" \
			pkg/etc/xml/catalog; \
	done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
