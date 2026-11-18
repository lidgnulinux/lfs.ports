COMMENT = Highly configurable and lightweight X11 window manager
VERSION = 3.6.1
REVISION = 0
CATEGORIES = x11
PKGNAME = openbox
HOMEPAGE = https://openbox.org/
ARCHIVE = openbox-${VERSION}.tar.gz
LINK = http://openbox.org/dist/openbox/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = openbox-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-x \
	--enable-startup-notification \
	--libexecdir=/usr/lib/openbox)
MAKEOPT =

prepare:
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/openbox-3.5.0-title-matching.patch 
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/openbox-3.5.0-which-2.20.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/openbox-kde-paths.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/py3.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/debian-887908.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/917204_undecorated_maximized_no_border.patch 
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/9ed6fdd71890c5cc43747f105382d5677e5d37e7.patch
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/static-position.patch
	cd ${BUILDDIR}; autoreconf -fiv

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
