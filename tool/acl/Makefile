COMMENT = Access control list utilities
VERSION = 2.3.2
REVISION = 0
CATEGORIES = tool
PKGNAME = acl
HOMEPAGE = https://savannah.nongnu.org/projects/acl
ARCHIVE = acl-2.3.2.tar.gz
LINK = https://download.savannah.nongnu.org/releases/acl/acl-2.3.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = acl-2.3.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
