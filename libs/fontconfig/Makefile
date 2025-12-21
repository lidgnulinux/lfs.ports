COMMENT = Library for font configuration.
VERSION = 2.17.1
REVISION = 0
CATEGORIES = libs
PKGNAME = fontconfig
HOMEPAGE = https://www.freedesktop.org/wiki/Software/fontconfig/
ARCHIVE = fontconfig-2.17.1.tar.xz
LINK = https://gitlab.freedesktop.org/api/v4/projects/890/packages/generic/fontconfig/2.17.1/fontconfig-2.17.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = fontconfig-2.17.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-shared \
	--disable-docs \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
