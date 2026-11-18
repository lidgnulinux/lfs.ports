COMMENT = Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
VERSION = 2.12.0
REVISION = 0
CATEGORIES = tool
PKGNAME = udisks2
HOMEPAGE = https://www.freedesktop.org/wiki/Software/udisks/
ARCHIVE = udisks-${VERSION}.tar.bz2
LINK = https://github.com/storaged-project/udisks/releases/download/udisks-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = udisks-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--disable-static \
	--enable-btrfs \
	--enable-gtk-doc \
	--enable-lvm2 \
	--libexecdir=/usr/libexec \
	--localstatedir=/var \
	--sbindir=/usr/bin \
	--with-systemdsystemunitdir=/usr/lib/systemd/system \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
