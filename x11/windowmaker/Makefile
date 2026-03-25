COMMENT = Window manager for X emulating the NeXTSTEP user interface
VERSION = 0.96.0
REVISION = 0
CATEGORIES = x11-wm
PKGNAME = windowmaker
HOMEPAGE = https://windowmaker.org/
ARCHIVE = WindowMaker-0.96.0.tar.gz
LINK = https://github.com/window-maker/wmaker/releases/download/wmaker-0.96.0/WindowMaker-0.96.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = WindowMaker-0.96.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-modelock \
	--disable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	rmdir package/usr/share/locale/

post-install:

include /usr/share/mk/lfs.port.mk
