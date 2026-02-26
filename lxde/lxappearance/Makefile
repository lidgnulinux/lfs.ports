COMMENT = Feature-rich GTK theme switcher of the LXDE Desktop
VERSION = 0.6.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxappearance
HOMEPAGE = https://github.com/lxde/lxappearance
ARCHIVE = 0.6.4.tar.gz
LINK = https://github.com/lxde/lxappearance/archive/refs/tags/0.6.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxappearance-0.6.4
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-dbus \
	--enable-gtk3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
