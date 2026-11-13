COMMENT = Display a message or query in a window
VERSION = 1.0.7
REVISION = 0
CATEGORIES = xapps
PKGNAME = xmessage
HOMEPAGE = https://gitlab.freedesktop.org/xorg/app/xmessage
ARCHIVE = xmessage-1.0.7.tar.xz
LINK = https://xorg.freedesktop.org/archive/individual/app/xmessage-1.0.7.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xmessage-1.0.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
