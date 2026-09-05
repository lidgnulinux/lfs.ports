COMMENT = utilities for managing filesystem extended attributes
VERSION = 2.6.0
REVISION = 0
CATEGORIES = tool
PKGNAME = attr
HOMEPAGE = https://savannah.nongnu.org/projects/attr
ARCHIVE = attr-${VERSION}.tar.xz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/a/attr/attr-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = attr-${VERSION}
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
