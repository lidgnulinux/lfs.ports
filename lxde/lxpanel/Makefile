COMMENT = Lightweight X11 desktop panel for LXDE
VERSION = 0.11.1
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxpanel
HOMEPAGE = https://github.com/lxde/lxpanel
ARCHIVE = 0.11.1.tar.gz
LINK = https://github.com/lxde/lxpanel/archive/refs/tags/0.11.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxpanel-0.11.1
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
