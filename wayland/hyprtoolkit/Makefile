COMMENT = A modern C++ Wayland-native GUI toolkit
VERSION = 0.5.4
REVISION = 0
CATEGORIES = wayland
PKGNAME = hyprtoolkit
HOMEPAGE = https://github.com/hyprwm/hyprtoolkit
ARCHIVE = hyprtoolkit-0.5.4.tar.gz 
LINK = https://github.com/hyprwm/hyprtoolkit/archive/v0.5.4/hyprtoolkit-0.5.4.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprtoolkit-0.5.4
BUILD_OPTION =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
