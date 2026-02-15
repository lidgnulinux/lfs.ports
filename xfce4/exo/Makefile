COMMENT = Extensions to Xfce by os-cillation
VERSION = 4.20.0
REVISION = 0
CATEGORIES = libs
PKGNAME = exo
HOMEPAGE = https://docs.xfce.org/xfce/exo/start
ARCHIVE = exo-4.20.0.tar.bz2
LINK = https://archive.xfce.org/xfce/4.20/src/exo-4.20.0.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = exo-4.20.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/usr/lib/xfce4 \
	--localstatedir=/var \
	--disable-static \
	--disable-gtk-doc \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
