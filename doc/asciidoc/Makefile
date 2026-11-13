COMMENT = Text document format for short documents, articles, books and UNIX man pages
VERSION = 10.2.1
REVISION = 0
CATEGORIES = doc
PKGNAME = asciidoc
HOMEPAGE = https://asciidoc-py.github.io
ARCHIVE = asciidoc-${VERSION}.tar.gz
LINK = https://github.com/asciidoc-py/asciidoc-py/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = asciidoc-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--docdir /usr/share/doc/asciidoc)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && autoconf

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
