COMMENT = LXDE icon theme.
VERSION = 0.5.2
REVISION = 0
CATEGORIES = icon
PKGNAME = lxde_icon
HOMEPAGE = https://github.com/lxde/lxde-icon-theme
SRCCD = git
BUILD = make
BUILDDIR = lxde-icon-theme
AUTO_CONF = (cd ${BUILDDIR} && ./autogen.sh && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
