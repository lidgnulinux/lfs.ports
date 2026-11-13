COMMENT = A lightweight and flexible command-line JSON processor
VERSION = 1.8.2
REVISION = 0
CATEGORIES = tool
PKGNAME = jq
HOMEPAGE = https://jqlang.github.io/jq/
ARCHIVE = jq-${VERSION}.tar.gz
LINK = https://github.com/jqlang/jq/releases/download/jq-${VERSION}/jq-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = jq-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--disable-docs \
	--sysconfdir=/etc)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
