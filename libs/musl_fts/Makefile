COMMENT = fts(3) functions, which are missing in musl libc
VERSION = 1.2.7
REVISION = 0
CATEGORIES = libs
PKGNAME = musl_fts
HOMEPAGE = https://github.com/void-linux/musl-fts/
ARCHIVE = v1.2.7.tar.gz
LINK = https://github.com/void-linux/musl-fts/archive/refs/tags/v1.2.7.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = musl-fts-1.2.7
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS=-fPIC ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--build=x86_64-pc-linux-musl)

prepare:
	cd ${BUILDDIR} && ./bootstrap.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
