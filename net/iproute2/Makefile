COMMENT = IP Routing Utilities
VERSION = 6.18.0
REVISION = 0
CATEGORIES = net
PKGNAME = iproute2
HOMEPAGE = https://wiki.linuxfoundation.org/networking/iproute2
ARCHIVE = iproute2-6.18.0.tar.xz
LINK = https://kernel.org/pub/linux/utils/net/iproute2/iproute2-6.18.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = iproute2-6.18.0
MAKEOPT = NETNS_RUN_DIR=/run/netns SBINDIR=/usr/sbin

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
