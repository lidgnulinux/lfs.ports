COMMENT = Clone of the Asus launcher for EeePC
VERSION = 0.2.8
REVISION = 0
CATEGORIES = xapps
PKGNAME = lxlauncher
HOMEPAGE = https://github.com/lxde/lxlauncher
ARCHIVE = 0.2.8.tar.gz
LINK = https://github.com/lxde/lxlauncher/archive/refs/tags/0.2.8.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lxlauncher-0.2.8
AUTO_CONF = (cd ${BUILDDIR} && autoreconf -fi && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-gtk3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
