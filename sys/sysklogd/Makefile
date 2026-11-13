COMMENT = System and kernel log daemons
VERSION = 2.7.2
REVISION = 0
CATEGORIES = sys
PKGNAME = sysklogd
HOMEPAGE = https://github.com/troglobit/sysklogd
ARCHIVE = sysklogd-2.7.2.tar.gz
LINK = https://github.com/troglobit/sysklogd/releases/download/v2.7.2/sysklogd-2.7.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sysklogd-2.7.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--runstatedir=/run \
	--without-logger   \
	--disable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
