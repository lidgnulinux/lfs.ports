COMMENT = Hardware identification and configuration data
VERSION = 0.412
REVISION = 0
CATEGORIES = misc
PKGNAME = hwdata
HOMEPAGE = https://github.com/vcrhonek/hwdata
ARCHIVE = v0.412.tar.gz
LINK = https://github.com/vcrhonek/hwdata/archive/refs/tags/v0.412.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = hwdata-0.412
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--datadir=/usr/share \
	--disable-blacklist)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
