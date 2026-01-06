COMMENT = A minimalist scheduler for your status line scripts
VERSION = 1.5
REVISION = 0
CATEGORIES = xapps
PKGNAME = i3blocks
HOMEPAGE = https://github.com/vivien/i3blocks
ARCHIVE = 1.5.tar.gz
LINK = https://github.com/vivien/i3blocks/archive/1.5.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = i3blocks-1.5
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
