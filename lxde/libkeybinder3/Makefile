COMMENT = A library for registering global keyboard shortcuts
VERSION = 0.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libkeybinder3
HOMEPAGE = https://github.com/engla/keybinder/tree/keybinder-3.0
ARCHIVE = keybinder-3.0-0.3.2.tar.gz
LINK = https://github.com/kupferlauncher/keybinder/releases/download/keybinder-3.0-v0.3.2/keybinder-3.0-0.3.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = keybinder-3.0-0.3.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-gtk-doc \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
