COMMENT = GTK+ Bluetooth Manager
VERSION = 2.4.6
REVISION = 0
CATEGORIES = tool
PKGNAME = blueman
HOMEPAGE = https://github.com/blueman-project/blueman
ARCHIVE = 2.4.6.tar.gz
LINK = https://github.com/blueman-project/blueman/archive/refs/tags/2.4.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = blueman-2.4.6
AUTO_CONF = (cd ${BUILDDIR} && autoreconf -vif && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--disable-schemas-compile \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/dont-rerun-plugin-tests.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
