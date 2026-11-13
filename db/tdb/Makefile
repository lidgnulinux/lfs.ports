COMMENT = The tdb library
VERSION = 1.4.15
REVISION = 0
CATEGORIES = db
PKGNAME = tdb
HOMEPAGE = https://tdb.samba.org/
ARCHIVE = tdb-${VERSION}.tar.gz
LINK = https://samba.org/ftp/tdb/tdb-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = tdb-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--bundled-libraries=NONE \
	--builtin-libraries=replace \
	--disable-rpath \
	--disable-python)
MAKEOPT =
XML_CATALOG_FILES = /etc/xml/catalog
export XML_CATALOG_FILES

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
