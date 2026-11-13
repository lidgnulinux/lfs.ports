COMMENT = A tool to help manage user directories like the Desktop folder.
VERSION = 0.19
REVISION = 0
CATEGORIES = xapps
PKGNAME = xdg_user_dirs
HOMEPAGE = https://freedesktop.org/wiki/Software/xdg-user-dirs
ARCHIVE = xdg-user-dirs-0.19.tar.xz
LINK = https://user-dirs.freedesktop.org/releases/xdg-user-dirs-0.19.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = xdg-user-dirs-0.19
BUILD_OPTION =
XML_CATALOG_FILES = /etc/xml/catalog
export XML_CATALOG_FILES

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
