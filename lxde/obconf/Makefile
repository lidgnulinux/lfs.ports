COMMENT = A GTK+ based configuration tool for the Openbox windowmanager
VERSION = 2.0.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = obconf
HOMEPAGE = http://openbox.org/wiki/ObConf:About
ARCHIVE = obconf-2.0.4.tar.gz
LINK = http://openbox.org/dist/obconf/obconf-2.0.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = obconf-2.0.4
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
