COMMENT = IEEE 802.1X/WPA supplicant wireless client.
VERSION = 2.11
REVISION = 1
CATEGORIES = net
PKGNAME = wpa_supplicant
HOMEPAGE = https://w1.fi/wpa_supplicant/
ARCHIVE = wpa_supplicant-${VERSION}.tar.gz
LINK = https://w1.fi/releases/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = wpa_supplicant-${VERSION}/wpa_supplicant
MAKEOPT = "BINDIR=/usr/sbin"

prepare:
	cat $(PWD)/config > ${BUILDDIR}/.config

post_build:
	install -Dm644 ${BUILDDIR}/wpa_supplicant.conf \
		package/usr/share/doc/wpa_supplicant/examples/wpa_supplicant.conf
	install -Dm644 ${BUILDDIR}/dbus/dbus-wpa_supplicant.conf \
		package/usr/share/dbus-1/system.d/wpa_supplicant.conf
	install -Dm644 ${BUILDDIR}/dbus/fi.w1.wpa_supplicant1.service \
		-t package/usr/share/dbus-1/system-services
	install -Dm644 ${BUILDDIR}/doc/docbook/wpa_supplicant.conf.5 \
		-t package/usr/share/man/man5/
	for i in ${BUILDDIR}/doc/docbook/*.8; do install -Dm644 $$i \
		-t package/usr/share/man/man8/; done

post-install:

include /usr/share/mk/lfs.port.mk
