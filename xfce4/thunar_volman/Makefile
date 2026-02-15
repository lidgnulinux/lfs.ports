COMMENT = Thunar extension for volumes management
VERSION = 4.20.0
REVISION = 0
CATEGORIES = xapps
PKGNAME = thunar_volman
HOMEPAGE = https://goodies.xfce.org/projects/thunar-plugins/thunar-volman
ARCHIVE = thunar-volman-4.20.0.tar.bz2
LINK = https://archive.xfce.org/src/xfce/thunar-volman/4.20/thunar-volman-4.20.0.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = thunar-volman-4.20.0
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
