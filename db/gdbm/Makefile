COMMENT = GNU dbm is a set of database routines that use extensible hashing
VERSION = 1.26
REVISION = 0
CATEGORIES = db
PKGNAME = gdbm
HOMEPAGE = https://www.gnu.org/software/gdbm/
ARCHIVE = gdbm-1.26.tar.gz
LINK = https://ftp.gnu.org/gnu/gdbm/gdbm-1.26.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = gdbm-1.26
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-libgdbm-compat \
	--disable-largefile \
	--disable-dependency-tracking \
	--enable-fast-install \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
