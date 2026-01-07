COMMENT = Mouse input driver for the Xorg X server.
VERSION = 1.9.5
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_input_mouse
HOMEPAGE = https://www.x.org
ARCHIVE = xf86-input-mouse-1.9.5.tar.gz
LINK = https://www.x.org/releases/individual/driver/xf86-input-mouse-1.9.5.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-input-mouse-1.9.5
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
