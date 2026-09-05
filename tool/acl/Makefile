COMMENT = Access control list utilities
VERSION = 2.4.0
REVISION = 1
CATEGORIES = tool
PKGNAME = acl
HOMEPAGE = https://savannah.nongnu.org/projects/acl
ARCHIVE = acl-${VERSION}.tar.gz
LINK = https://download.savannah.nongnu.org/releases/acl/acl-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = acl-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
