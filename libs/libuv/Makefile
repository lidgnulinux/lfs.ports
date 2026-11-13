COMMENT = An asynchronous I/O library.
VERSION = 1.53.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libuv
HOMEPAGE = https://www.libuv.org
ARCHIVE = libuv-v${VERSION}.tar.gz
LINK = https://dist.libuv.org/dist/v${VERSION}/libuv-v${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libuv-v${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && sh ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
