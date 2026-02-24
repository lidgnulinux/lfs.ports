COMMENT = Text document format for short documents, articles, books and UNIX man pages
VERSION = 10.2.1
REVISION = 0
CATEGORIES = doc
PKGNAME = asciidoc
HOMEPAGE = https://asciidoc-py.github.io
ARCHIVE = asciidoc-10.2.1.tar.gz
LINK = https://github.com/asciidoc-py/asciidoc-py/releases/download/10.2.1/asciidoc-10.2.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = asciidoc-10.2.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--docdir /usr/share/doc/asciidoc \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && autoconf

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
