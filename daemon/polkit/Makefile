COMMENT = Application development toolkit for controlling system-wide privileges
VERSION = 128
REVISION = 0
CATEGORIES = daemon
PKGNAME = polkit
HOMEPAGE = https://github.com/polkit-org/polkit
ARCHIVE = polkit-${VERSION}.tar.gz
LINK = https://github.com/polkit-org/polkit/archive/refs/tags/${VERSION}/polkit-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = polkit-${VERSION}
BUILD_OPTION = -Dtests=false \
	-Dexamples=false \
	-Dgettext=true \
	-Dgtk_doc=true \
	-Dman=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
