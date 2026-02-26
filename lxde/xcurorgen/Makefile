COMMENT = Create an X cursor file from PNG images
VERSION = 1.0.9
REVISION = 0
CATEGORIES = xapps
PKGNAME = xcursorgen
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = xcursorgen-1.0.9.tar.xz
LINK = https://xorg.freedesktop.org/archive/individual/app/xcursorgen-1.0.9.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xcursorgen-1.0.9
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
