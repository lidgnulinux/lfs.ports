COMMENT = SQlite is a C-language library that implements a SQL database engine.
VERSION = 3.50.1
_VERSION = 3510100
REVISION = 0
CATEGORIES = db
PKGNAME = sqlite
HOMEPAGE = https://www.sqlite.org
ARCHIVE = sqlite-autoconf-3510100.tar.gz
LINK = https://sqlite.org/2025/sqlite-autoconf-3510100.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sqlite-autoconf-3510100
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-fts4 \
	--enable-fts5 \
	--enable-session \
	CPPFLAGS="-DSQLITE_ENABLE_FTS3=1 \
		-DSQLITE_ENABLE_FTS4=1 \
		-DSQLITE_ENABLE_COLUMN_METADATA=1 \
		-DSQLITE_ENABLE_UNLOCK_NOTIFY=1 \
		-DSQLITE_ENABLE_DBSTAT_VTAB=1 \
		-DSQLITE_SECURE_DELETE=1 \
		-DSQLITE_ENABLE_FTS3_TOKENIZER=1")
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
