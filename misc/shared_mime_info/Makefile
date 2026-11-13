COMMENT = A MIME database.
VERSION = 2.5.1
REVISION = 0
CATEGORIES = misc
PKGNAME = shared_mime_info
HOMEPAGE = https://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec/
ARCHIVE = shared-mime-info-${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/xdg/shared-mime-info/-/archive/${VERSION}/shared-mime-info-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = shared-mime-info-${VERSION}
BUILD_OPTION = -Dupdate-mimedb=true -Dbuild-tests=false
XML_CATALOG_FILES = /etc/xml/catalog

export XML_CATALOG_FILES

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
