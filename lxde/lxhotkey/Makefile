COMMENT = Keyboard shortcuts configurator (part of LXDE)
VERSION = 0.1.2
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxhotkey
HOMEPAGE = https://github.com/lxde/lxhotkey
ARCHIVE = 0.1.2.tar.gz
LINK = https://github.com/lxde/lxhotkey/archive/refs/tags/0.1.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxhotkey-0.1.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-gtk=3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
