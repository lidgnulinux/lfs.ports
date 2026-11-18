COMMENT = Files needed for the LXQt Wayland Session
VERSION = 0.5.0
REVISION = 0
CATEGORIES = wayland
PKGNAME = lxqt_wayland_session
HOMEPAGE = https://github.com/lxqt/lxqt-wayland-session
ARCHIVE = lxqt-wayland-session-${VERSION}.tar.xz
LINK = https://github.com/lxqt/lxqt-wayland-session/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = lxqt-wayland-session-${VERSION}
BUILD_OPTION =

prepare:
	patch -Np1 -d ${BUILDDIR} < $(CURDIR)/lxqt-wayland-session-import-environment.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
