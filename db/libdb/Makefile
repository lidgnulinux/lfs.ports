COMMENT = The Berkeley DB embedded database system
VERSION = 5.3.28
REVISION = 0
CATEGORIES = db
PKGNAME = libdb
HOMEPAGE = https://www.oracle.com/technology/software/products/berkeley-db/index.html
ARCHIVE = db-${VERSION}.tar.gz
LINK = https://download.oracle.com/berkeley-db/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = db-${VERSION}/build_unix
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS="-fpermissive" ../dist/configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-compat185 \
	--enable-shared \
	--enable-cxx \
	--disable-static)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR}/../ -i $(PWD)/atomic.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
