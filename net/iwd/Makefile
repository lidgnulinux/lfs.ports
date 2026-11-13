COMMENT = Internet Wireless Daemon
VERSION = 3.12
REVISION = 1
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
	--enable-wired \
	--enable-tools)
GRAFT = no

prepare:

post_build:
	install -m750 -d package/var/lib/iwd
	install -m644 -D main.conf package/etc/iwd/main.conf

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
