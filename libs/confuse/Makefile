COMMENT = C library for parsing configuration files
VERSION = 3.4
REVISION = 0
CATEGORIES = libs
PKGNAME = confuse
HOMEPAGE = https://github.com/libconfuse/libconfuse
ARCHIVE = confuse-${VERSION}.tar.xz
LINK = https://github.com/libconfuse/libconfuse/releases/download/v${VERSION}/confuse-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = confuse-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared \
	--enable-static \
	--disable-nls)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
