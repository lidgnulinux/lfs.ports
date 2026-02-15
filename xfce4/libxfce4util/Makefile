COMMENT = Basic utility non-GUI functions for Xfce
VERSION = 4.20.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libxfce4util
HOMEPAGE = https://docs.xfce.org/xfce/libxfce4util/start
ARCHIVE = libxfce4util-4.20.1.tar.bz2
LINK = https://archive.xfce.org/src/xfce/libxfce4util/4.20/libxfce4util-4.20.1.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = libxfce4util-4.20.1
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
