COMMENT = set the keyboard using the X Keyboard Extension
VERSION = 1.0.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = setxkbmap
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = setxkbmap-1.0.4.tar.gz
LINK = https://www.x.org/releases/individual/app/setxkbmap-1.0.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = setxkbmap-1.0.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
