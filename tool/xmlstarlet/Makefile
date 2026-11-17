COMMENT = A set of tools to transform, query, validate, and edit XML documents
VERSION = 1.7.0
REVISION = 0
CATEGORIES = tool
PKGNAME = xmlstarlet
HOMEPAGE = https://xmlstarlet.github.io/
ARCHIVE = xmlstarlet-${VERSION}.tar.gz
LINK = https://github.com/xmlstarlet/xmlstarlet/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = xmlstarlet-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && LIBXSLT_PREFIX=/usr \
	LIBXML_PREFIX=/usr ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
