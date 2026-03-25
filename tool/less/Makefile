COMMENT = File pager
VERSION = 692
REVISION = 0
CATEGORIES = tool
PKGNAME = less
HOMEPAGE = https://www.greenwoodsoftware.com/less/
ARCHIVE = less-692.tar.gz
LINK = https://www.greenwoodsoftware.com/less/less-692.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = less-692
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
