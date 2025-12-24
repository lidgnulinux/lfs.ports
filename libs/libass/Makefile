COMMENT = Portable library for SSA/ASS subtitle rendering
VERSION = 0.17.4
REVISION = 0
CATEGORIES = libs
PKGNAME = libass
HOMEPAGE = https://github.com/libass/libass
ARCHIVE = libass-0.17.4.tar.xz
LINK = https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = libass-0.17.4
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
