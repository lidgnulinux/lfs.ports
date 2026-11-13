COMMENT = GIO-style async APIs for most Flatpak portals
VERSION = 0.11.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libportal
HOMEPAGE = https://github.com/flatpak/libportal
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/flatpak/libportal/archive/refs/tags/${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = libportal-${VERSION}
BUILD_OPTION = -Dbackend-gtk3=enabled \
	-Dbackend-gtk4=enabled \
	-Dbackend-qt5=disabled \
	-Dbackend-qt6=disabled \
	-Ddocs=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
