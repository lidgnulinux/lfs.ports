COMMENT = A mouse server for the console
VERSION = 1.20.7
REVISION = 0
CATEGORIES = tool
PKGNAME = gpm
HOMEPAGE = https://www.nico.schottelius.org/software/gpm/
ARCHIVE = gpm-1.20.7.tar.bz2
LINK = http://www.nico.schottelius.org/software/gpm/archives/gpm-1.20.7.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = gpm-1.20.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--sysconfdir=/etc \
	--sysconfdir=/etc/gpm \
	--build=x86_64-pc-linux-musl)
MAKEOPT = CFLAGS="-fcommon" CPPFLAGS="-I${BUILDDIR}/src/headers"

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	cd ${BUILDDIR} && ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
