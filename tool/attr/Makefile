COMMENT = utilities for managing filesystem extended attributes
VERSION = 2.5.2
REVISION = 0
CATEGORIES = tool
PKGNAME = attr
HOMEPAGE = https://savannah.nongnu.org/projects/attr
ARCHIVE = attr-2.5.2.tar.gz
LINK = https://download.savannah.nongnu.org/releases/attr/attr-2.5.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = attr-2.5.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls \
	--build=x86_64-pc-linux-musl)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/attr-basename.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
