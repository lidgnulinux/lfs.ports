COMMENT = X C-language Binding - cursor library (port of libXcursor)
VERSION = 0.1.5
REVISION = 0
CATEGORIES = libs
PKGNAME = xcb_util_cursor
HOMEPAGE = https://gitlab.freedesktop.org/xorg/lib/libxcb-cursor
ARCHIVE = xcb-util-cursor-0.1.5.tar.xz
LINK = https://xcb.freedesktop.org/dist/xcb-util-cursor-0.1.5.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xcb-util-cursor-0.1.5
BUILD_OPTION =
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
