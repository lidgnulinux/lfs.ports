COMMENT = Random collection of Linux utilities
VERSION = 2.42
REVISION = 0
CATEGORIES = tool
PKGNAME = util_linux
HOMEPAGE = https://git.kernel.org/cgit/utils/util-linux/util-linux.git
ARCHIVE = util-linux-2.42.tar.xz
LINK = https://www.kernel.org/pub/linux/utils/util-linux/v2.42/util-linux-2.42.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = util-linux-2.42
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--runstatedir=/run \
	--sbindir=/usr/sbin \
	--disable-chfn-chsh \
	--disable-login \
	--disable-nologin \
	--disable-su \
	--disable-setpriv \
	--disable-runuser \
	--disable-pylibmount  \
	--disable-liblastlog2 \
	--disable-static \
	--without-python \
	--without-systemd \
	--without-systemdsystemunitdir \
	ADJTIME_PATH=/var/lib/hwclock/adjtime \
	--docdir=/usr/share/doc/util-linux-2.41 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cp -r $(PWD)/ttydefaults.h ${BUILDDIR}/include
	patch -p1 -d ${BUILDDIR} -i $(PWD)/utmps.patch
	patch -p1 -d ${BUILDDIR} -i $(PWD)/fix_AT_HANDLE_FID_musl.patch 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
