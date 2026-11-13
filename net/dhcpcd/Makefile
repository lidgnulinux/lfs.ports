COMMENT = dhcpcd is an implementation of the DHCP client specified in RFC2131.
VERSION = 10.3.2
REVISION = 0
CATEGORIES = net
PKGNAME = dhcpcd
HOMEPAGE = https://roy.marples.name/projects/dhcpcd
ARCHIVE = dhcpcd-${VERSION}.tar.xz
LINK = https://github.com/NetworkConfiguration/dhcpcd/releases/download/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = dhcpcd-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--libexecdir=/usr/lib/dhcpcd \
	--dbdir=/var/lib/dhcpcd \
	--privsepuser=dhcpcd \
	--disable-privsep \
	--runstatedir=/run \
	--without-openssl \
	--sysconfdir=/etc)

prepare:

post_build:
	mv package/etc/dhcpcd.conf package/etc/dhcpcd.conf.example 

post-install:

include /usr/share/mk/lfs.port.mk
