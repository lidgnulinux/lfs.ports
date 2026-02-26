COMMENT = Lightweight X11 session manager
VERSION = 0.5.6
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxsession
HOMEPAGE = https://github.com/lxde/lxsession
ARCHIVE = 0.5.6.tar.gz
LINK = https://github.com/lxde/lxsession/archive/refs/tags/0.5.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxsession-0.5.6
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-gtk3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	sed -i 's/which /command -v /' ${BUILDDIR}/lxlock/lxlock
	sed -i 's/^NotShowIn=.*/OnlyShowIn=LXDE;/' \
		${BUILDDIR}/data/lxpolkit.desktop.in.in
	mkdir ${BUILDDIR}/m4
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
