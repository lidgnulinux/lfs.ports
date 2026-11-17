COMMENT = A sophisticated object-relational DBMS, version 18
VERSION = 18.7
REVISION = 0
CATEGORIES = db
PKGNAME = postgresql18
HOMEPAGE = https://www.postgresql.org/
ARCHIVE = postgresql-${VERSION}.tar.bz2
LINK = https://ftp.postgresql.org/pub/source/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = postgresql-${VERSION}
BUILD_OPTION = -Dnls=disabled

prepare:
	sed -e '/DEFAULT_PGSOCKET_DIR/s@/tmp@/run/postgresql@' \
		-i ${BUILDDIR}/src/include/pg_config_manual.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
