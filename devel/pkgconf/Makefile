COMMENT = development framework configuration tools
VERSION = 2.5.1
REVISION = 0
CATEGORIES = devel
PKGNAME = pkgconf
HOMEPAGE = https://gitea.treehouse.systems/ariadne/pkgconf
ARCHIVE = pkgconf-2.5.1.tar.xz
LINK = https://distfiles.ariadne.space/pkgconf/pkgconf-2.5.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = pkgconf-2.5.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	ln -s pkgconf package/usr/bin/pkg-config

post-install:

include /usr/share/mk/lfs.port.mk
