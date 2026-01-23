COMMENT = Protocols and protocol extensions complementing the Wayland core protocol
VERSION = 1.47
REVISION = 0
CATEGORIES = libs
PKGNAME = wayland_protocols
HOMEPAGE = https://wayland.freedesktop.org
ARCHIVE = wayland-protocols-${VERSION}.tar.xz
LINK = https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/${VERSION}/downloads/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = wayland-protocols-${VERSION}
BUILD_OPTION = -Dtests=false

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
