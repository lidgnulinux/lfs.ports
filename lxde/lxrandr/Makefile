COMMENT = Monitor configuration tool (part of LXDE)
VERSION = 0.3.3
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxrandr
HOMEPAGE = https://github.com/lxde/lxrandr
ARCHIVE = 0.3.3.tar.gz
LINK = https://github.com/lxde/lxrandr/archive/refs/tags/0.3.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxrandr-0.3.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-gtk3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
