COMMENT = Hierarchical configuration system for Xfce
VERSION = 4.20.0
REVISION = 0
CATEGORIES = tools
PKGNAME = xfconf
HOMEPAGE = https://xfce.org/
ARCHIVE = xfconf-4.20.0.tar.bz2
LINK = https://archive.xfce.org/xfce/4.20/src/xfconf-4.20.0.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = xfconf-4.20.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-introspection \
	--libexecdir=/usr/lib \
	--enable-vala \
	--disable-static \
	--disable-gtk-doc \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
