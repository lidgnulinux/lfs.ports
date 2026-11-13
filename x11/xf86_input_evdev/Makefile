COMMENT = Generic Linux input driver for the Xorg X server.
VERSION = 2.11.0
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_input_evdev
HOMEPAGE = https://www.x.org
ARCHIVE = xf86-input-evdev-2.11.0.tar.xz
LINK = https://www.x.org/releases/individual/driver/xf86-input-evdev-2.11.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-input-evdev-2.11.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
