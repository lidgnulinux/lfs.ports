COMMENT = Fork of zenity - display graphical dialogs from shell scripts or command line
VERSION = 14.2
REVISION = 0
CATEGORIES = tool
PKGNAME = yad
HOMEPAGE = https://sourceforge.net/projects/yad-dialog/
ARCHIVE = yad-14.2.tar.xz
LINK = https://github.com/v1cont/yad/releases/download/v14.2/yad-14.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = yad-14.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-icon-browser \
	--disable-html \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
