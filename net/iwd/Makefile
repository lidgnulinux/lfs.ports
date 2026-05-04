COMMENT = Internet Wireless Daemon
VERSION = 3.12
REVISION = 0
CATEGORIES = net
PKGNAME = iwd
HOMEPAGE = https://iwd.wiki.kernel.org/
ARCHIVE = iwd-3.12.tar.gz
LINK = https://mirrors.edge.kernel.org/pub/linux/network/wireless/iwd-3.12.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = iwd-3.12
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
	install -m644 -D main.conf package/etc/iwd/main.conf.new
	install -m755 -D iwd.initd package/etc/openrc/init.d/iwd
	install -m644 -D iwd.confd package/etc/openrc/conf.d/iwd

post-install:
	@echo ""
	@echo -e "if iwd service somehow doesn't work, you may need to enable \n\
	or use supervisor in iwd service config. \n\
	\n\
	You may also need to check iwd dbus service conf in \n\
	/usr/share/dbus-1/system.d/iwd-dbus.conf. Make sure to allow it like this : \n\
	\n\
  <policy context=\"default\"> \n\
    <allow send_destination=\"net.connman.iwd\"/> \n\
  </policy>"

include /usr/share/mk/lfs.port.mk
