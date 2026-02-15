COMMENT = Hardware identification and configuration data
VERSION = 0.404
REVISION = 0
CATEGORIES = misc
PKGNAME = hwdata
HOMEPAGE = https://github.com/vcrhonek/hwdata
ARCHIVE = v0.404.tar.gz
LINK = https://github.com/vcrhonek/hwdata/archive/refs/tags/v0.404.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = hwdata-0.404
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--datadir=/usr/share \
	--disable-blacklist \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
