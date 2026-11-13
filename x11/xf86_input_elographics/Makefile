COMMENT = Elographics input driver for the Xorg X server.
VERSION = 1.4.4
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_input_elographics
HOMEPAGE = https://www.x.org
ARCHIVE = xf86-input-elographics-1.4.4.tar.gz
LINK = https://www.x.org/releases/individual/driver/xf86-input-elographics-1.4.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-input-elographics-1.4.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
