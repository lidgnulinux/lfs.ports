COMMENT = init system agnostic fork of systemd-udev
VERSION = 3.2.14
REVISION = 0
CATEGORIES = sys
PKGNAME = eudev
HOMEPAGE = https://github.com/eudev-project/eudev
ARCHIVE = eudev-3.2.14.tar.gz
LINK = https://github.com/eudev-project/eudev/releases/download/v3.2.14/eudev-3.2.14.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = eudev-3.2.14
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-rootlibexecdir=/lib/udev \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-hwdb \
	--enable-manpages \
	--enable-rule-generator \
	--enable-kmod \
	--disable-selinux)

MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
