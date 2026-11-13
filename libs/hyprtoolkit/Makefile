COMMENT = A modern C++ Wayland-native GUI toolkit
VERSION = 0.6.0
REVISION = 0
CATEGORIES = libs
PKGNAME = hyprtoolkit
HOMEPAGE = https://github.com/hyprwm/hyprtoolkit
ARCHIVE = hyprtoolkit-${VERSION}.tar.gz
LINK = https://github.com/hyprwm/hyprtoolkit/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprtoolkit-${VERSION}
BUILD_OPTION = -D CMAKE_BUILD_TYPE=None

prepare:
	sed -i 's/OpenGL::OpenGL/OpenGL::GL/' ${BUILDDIR}/CMakeLists.txt 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
