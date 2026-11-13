COMMENT = A libinput-based X driver.
VERSION = 1.5.0
REVISION = 1
CATEGORIES = x11
PKGNAME = xf86_input_libinput
HOMEPAGE = https://www.x.org
ARCHIVE = xf86-input-libinput-1.5.0.tar.gz
LINK = https://www.x.org/releases/individual/driver/xf86-input-libinput-1.5.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-input-libinput-1.5.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
