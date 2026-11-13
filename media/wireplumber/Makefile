COMMENT = Session / policy manager implementation for PipeWire
VERSION = 0.5.19
REVISION = 1
CATEGORIES = media
PKGNAME = wireplumber
HOMEPAGE = https://pipewire.pages.freedesktop.org/wireplumber/
ARCHIVE = wireplumber-${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/pipewire/wireplumber/-/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = wireplumber-${VERSION}
BUILD_OPTION = -Delogind=disabled -Dsystemd-system-service=true -Dsystem-lua=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
