COMMENT = openrc (dependency-based init system)
VERSION = 0.63.3
REVISION = 1
CATEGORIES = sys
PKGNAME = openrc
HOMEPAGE = https://github.com/OpenRC/openrc
ARCHIVE = 0.63.3.tar.gz
LINK = https://github.com/OpenRC/openrc/archive/0.63.3.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = openrc-0.63.3
BUILD_OPTION = -Dbash-completions=true \
	-Dpkgconfig=true \
	-Dpam=false \
	-Daudit=disabled \
	-Dnewnet=true \
	-Dselinux=disabled \
	-Dsysvinit=true \
	-Duucp_group=root \
	--default-library=both \
	--bindir=/bin \
	--sysconfdir=/etc/openrc \
	--sbindir=/sbin

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
