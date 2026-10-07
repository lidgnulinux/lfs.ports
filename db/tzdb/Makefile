COMMENT = Time zone database.
VERSION = 2026e
REVISION = 0
CATEGORIES = db
PKGNAME = tzdb
HOMEPAGE = https://www.iana.org/time-zones
ARCHIVE = tzdb-${VERSION}.tar.lz
LINK = https://data.iana.org/time-zones/releases/tzdb-${VERSION}.tar.lz
SRCCD = archive
BUILD = make
BUILDDIR = tzdb-${VERSION}
MAKEOPT = TOPDIR=/ \
	TZDIR=/etc/zoneinfo \
	ETCDIR=/usr/sbin \
	LIBDIR=/usr/lib \
	KSHELL="/bin/sh -" \
	DESTDIR="$(PWD)/package"

prepare:

post_build:
	rm -f package/usr/bin/tzselect \
	 package/etc/localtime \
	 package/etc/zoneinfo-posix

post-install:

include /usr/share/mk/lfs.port.mk
