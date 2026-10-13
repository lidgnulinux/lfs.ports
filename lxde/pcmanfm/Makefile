COMMENT = Extremely fast and lightweight file manager
VERSION = 1.4.0
REVISION = 0
CATEGORIES = xapps
PKGNAME = pcmanfm
HOMEPAGE = https://github.com/lxde/pcmanfm
ARCHIVE = 1.4.0.tar.gz
LINK = https://github.com/lxde/pcmanfm/archive/refs/tags/1.4.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = pcmanfm-1.4.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-gtk=3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:
	install -Dm644 pcmanfm.appdata.xml package/usr/share/metainfo/pcmanfm.appdata.xml

post-install:

include /usr/share/mk/lfs.port.mk
