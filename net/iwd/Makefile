COMMENT = Internet Wireless Daemon
VERSION = 3.11
REVISION = 0
CATEGORIES = net
PKGNAME = iwd
HOMEPAGE = https://iwd.wiki.kernel.org/
ARCHIVE = iwd-3.11.tar.gz
LINK = https://mirrors.edge.kernel.org/pub/linux/network/wireless/iwd-3.11.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = iwd-3.11
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-systemd-service \
	--enable-wired \
	--enable-tools \
	--build=x86_64-pc-linux-musl)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/0001-resolving-service-none.patch


post_build:
	install -m750 -d package/var/lib/iwd
	install -m644 -D main.conf package/etc/iwd/main.conf
	install -m755 -D iwd.initd package/etc/openrc/init.d/iwd
	install -m644 -D iwd.confd package/etc/openrc/conf.d/iwd

post-install:

include /usr/share/mk/lfs.port.mk
