COMMENT = The man command and related utilities for examining on-line help files
VERSION = 2.13.1
REVISION = 0
CATEGORIES = doc
PKGNAME = man_db
HOMEPAGE = https://man-db.gitlab.io/man-db/
ARCHIVE = man-db-2.13.1.tar.xz
LINK = https://download.savannah.nongnu.org/releases/man-db/man-db-2.13.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = man-db-2.13.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-setuid \
	--enable-cache-owner=bin \
	--with-browser=/usr/bin/lynx \
	--with-vgrind=/usr/bin/vgrind \
	--with-grap=/usr/bin/grap \
	--with-systemdtmpfilesdir= \
	--with-systemdsystemunitdir= \
	--docdir=/usr/share/doc/man-db-2.13.1 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/ignore.patch

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
