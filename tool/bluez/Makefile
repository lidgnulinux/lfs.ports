COMMENT = Tools for the Bluetooth protocol stack
VERSION = 5.87
REVISION = 0
CATEGORIES = tool
PKGNAME = bluez
HOMEPAGE = https://www.bluez.org/
ARCHIVE = bluez-${VERSION}.tar.xz
LINK = https://www.kernel.org/pub/linux/bluetooth/bluez-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = bluez-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/usr/libexec \
	--with-systemdsystemunitdir=/usr/lib/systemd/system \
	--with-systemduserunitdir=/usr/lib/systemd/user \
	--disable-systemd \
	--enable-library \
	--enable-deprecated \
	--enable-hid2hci \
	--enable-mesh \
	--enable-sixaxis \
	--enable-btpclient \
	--enable-experimental \
	--with-dbusconfdir=/usr/share \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	make -j4 -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} ${MAKEOPT} DESTDIR=${DESTDIR} install-pluginLTLIBRARIES
	install -D -m644 ${BUILDDIR}/src/main.conf package/etc/bluetooth/main.conf
	install -Dm755 ${BUILDDIR}/tools/btmgmt -t package/usr/bin/
	install -Dm755 ${BUILDDIR}/attrib/gatttool -t package/usr/bin/
	install -Dm644 $(PWD)/org.bluez.obex.service package/usr/share/dbus-1/services/org.bluez.obex.service

post-install:

include /usr/share/mk/lfs.port.mk
