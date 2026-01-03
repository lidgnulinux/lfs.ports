COMMENT = Utility to dump an image of an X window in XWD format
VERSION = 1.0.9
REVISION = 0
CATEGORIES = xapps
PKGNAME = xwd
HOMEPAGE = https://gitlab.freedesktop.org/xorg/app/xwd
ARCHIVE = xwd-1.0.9.tar.xz
LINK = https://xorg.freedesktop.org/archive/individual/app/xwd-1.0.9.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xwd-1.0.9
BUILD_OPTION =
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
