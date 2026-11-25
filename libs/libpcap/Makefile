COMMENT = A system-independent interface for user-level packet capture
VERSION = 1.11.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libpcap
HOMEPAGE = https://www.tcpdump.org/
ARCHIVE = libpcap-${VERSION}.tar.gz
LINK = https://www.tcpdump.org/release/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libpcap-1.11.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib; sleep 1; ./config.status)
MAKEOPT = all shared

prepare:

post_build:
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(CURDIR)/package install-shared

post-install:

include /usr/share/mk/lfs.port.mk
