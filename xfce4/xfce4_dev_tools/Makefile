COMMENT = Xfce developer tools
VERSION = 4.21.0
REVISION = 0
CATEGORIES = tool
PKGNAME = xfce4_dev_tools
HOMEPAGE = https://docs.xfce.org/xfce/xfce4-dev-tools/start
ARCHIVE = xfce4-dev-tools-4.21.0.tar.bz2
LINK = https://archive.xfce.org/src/xfce/xfce4-dev-tools/4.21/xfce4-dev-tools-4.21.0.tar.bz2 
SRCCD = archive
BUILD = make
BUILDDIR = xfce4-dev-tools-4.21.0
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
