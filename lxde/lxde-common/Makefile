COMMENT = Common files of the LXDE Desktop
VERSION = 0.99.3
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxde_common
HOMEPAGE = https://github.com/lxde/lxde-common
ARCHIVE = 0.99.3.tar.gz
LINK = https://github.com/lxde/lxde-common/archive/refs/tags/0.99.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxde-common-0.99.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
