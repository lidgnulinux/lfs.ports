COMMENT = low-level configuration system
VERSION = 0.49.0
REVISION = 0
CATEGORIES = tool
PKGNAME = dconf
HOMEPAGE = https://wiki.gnome.org/Projects/dconf
ARCHIVE = dconf-0.49.0.tar.xz
LINK = https://download.gnome.org/sources/dconf/0.49/dconf-0.49.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = dconf-0.49.0
BUILD_OPTION =
XML_CATALOG_FILES = /etc/xml/catalog
export XML_CATALOG_FILES

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
