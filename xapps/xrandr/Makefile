COMMENT = Command line interface to RandR extension
VERSION = 1.5.3
REVISION = 0
CATEGORIES = xapps
PKGNAME = xrandr
HOMEPAGE = https://www.x.org/wiki/
ARCHIVE = xrandr-1.5.3.tar.xz
LINK = https://www.x.org/releases/individual/app/xrandr-1.5.3.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xrandr-1.5.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:
	rm package/usr/bin/xkeystone

post-install:

include /usr/share/mk/lfs.port.mk
