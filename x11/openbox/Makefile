COMMENT = A highly configurable and standards-compliant X11 window manager
VERSION = 3.6.1
REVISION = 0
CATEGORIES = x11-wm
PKGNAME = openbox
HOMEPAGE = http://openbox.org
ARCHIVE = openbox-3.6.1.tar.gz
LINK = http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = openbox-3.6.1
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
	gcc -o setlayout setlayout.c -lX11
	install setlayout package/usr/bin/setlayout

post-install:

include /usr/share/mk/lfs.port.mk
