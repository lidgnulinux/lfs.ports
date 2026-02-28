COMMENT = Script interpreter providing curses widgets
VERSION = 1.3.20260107
REVISION = 0
CATEGORIES = misc
PKGNAME = dialog
HOMEPAGE = https://invisible-island.net/dialog/dialog.html
ARCHIVE = dialog-1.3-20260107.tgz
LINK = https://invisible-mirror.net/archives/dialog/dialog-1.3-20260107.tgz
SRCCD = archive
BUILD = make
BUILDDIR = dialog-1.3-20260107
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-ncursesw \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
