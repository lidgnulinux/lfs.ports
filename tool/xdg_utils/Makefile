COMMENT = Basic desktop integration functions
VERSION = 1.2.1
REVISION = 0
CATEGORIES = tool
PKGNAME = xdg_utils
HOMEPAGE = https://www.freedesktop.org/wiki/Software/xdg-utils/
ARCHIVE = xdg-utils-v${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/xdg/xdg-utils/-/archive/v${VERSION}/xdg-utils-v${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xdg-utils-v${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT = XML_CATALOG_FILES=/etc/xml/catalog

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
