COMMENT = Small program to configure keyboard and mouse for LXDE
VERSION = 0.3.6
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxinput
HOMEPAGE = https://github.com/lxde/lxinput
ARCHIVE = 0.3.6.tar.gz
LINK = https://github.com/lxde/lxinput/archive/refs/tags/0.3.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxinput-0.3.6
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
