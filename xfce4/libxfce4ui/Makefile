COMMENT = Widgets library for the Xfce desktop environment
VERSION = 4.21.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libxfce4ui
HOMEPAGE = https://xfce.org/
ARCHIVE = libxfce4ui-4.21.3.tar.xz
LINK = https://archive.xfce.org/src/xfce/libxfce4ui/4.21/libxfce4ui-4.21.3.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = libxfce4ui-4.21.3
BUILD_OPTION = -Dgtk-doc=false \
	-Dintrospection=true \
	-Depoxy=enabled \
	-Dx11=enabled \
	-Dwayland=enabled 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
