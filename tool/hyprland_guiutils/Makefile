COMMENT = Hyprland GUI utilities
VERSION = 0.2.2
REVISION = 0
CATEGORIES = tool
PKGNAME = hyprland_guiutils
HOMEPAGE = https://github.com/hyprwm/hyprland-guiutils
ARCHIVE = hyprland-guiutils-${VERSION}.tar.gz
LINK = https://github.com/hyprwm/hyprland-guiutils/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprland-guiutils-${VERSION}
BUILD_OPTION = -D CMAKE_BUILD_TYPE=Release

prepare:

post_build:
	rm package/usr/bin/hyprland-donate-screen

post-install:

include /usr/share/mk/lfs.port.mk
