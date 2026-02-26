COMMENT = Lightweight image viewer
VERSION = 0.3.1
REVISION = 0
CATEGORIES = xapps
PKGNAME = gpicview
HOMEPAGE = https://github.com/lxde/gpicview
ARCHIVE = 0.3.1.tar.gz
LINK = https://github.com/lxde/gpicview/archive/refs/tags/0.3.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = gpicview-0.3.1
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
	install -Dm644 $(PWD)/gpicview.appdata.xml \
		package/usr/share/metainfo/gpicview.appdata.xml

post-install:

include /usr/share/mk/lfs.port.mk
