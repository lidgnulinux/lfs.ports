COMMENT = a blazing fast wayland wallpaper utility with IPC controls
VERSION = 0.8.4
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprpaper
HOMEPAGE = https://github.com/hyprwm/hyprpaper
ARCHIVE = hyprpaper-0.8.4.tar.gz
LINK = https://github.com/hyprwm/hyprpaper/archive/v0.8.4/hyprpaper-0.8.4.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprpaper-0.8.4
BUILD_OPTION = -D CMAKE_BUILD_TYPE=Release

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_include_cstring.patch
	patch -p1 -d ${BUILDDIR} -i $(PWD)/01_use_GL_over_OpenGL.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
