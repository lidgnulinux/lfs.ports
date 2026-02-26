COMMENT = Plugin for LXAppearance to configure Openbox (GTK+ 3 version)
VERSION = 0.2.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxappearance_obconf
HOMEPAGE = https://lxde.org/
ARCHIVE = 0.2.4.tar.gz
LINK = https://github.com/lxde/lxappearance-obconf/archive/refs/tags/0.2.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxappearance-obconf-0.2.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-gtk3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	sed -i /frame1/,+19d ${BUILDDIR}/src/obconf.glade
	cd ${BUILDDIR} && ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
