COMMENT = Mesa is an OpenGL compatible 3-D graphics library.
VERSION = 26.0.4
REVISION = 0
CATEGORIES = libs
PKGNAME = mesa
HOMEPAGE = https://www.mesa3d.org/
ARCHIVE = mesa-26.0.4.tar.xz
LINK = https://mesa.freedesktop.org/archive/mesa-26.0.4.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = mesa-26.0.4
BUILD_OPTION = --buildtype=release \
	--strip \
	-Ddri-drivers-path=/usr/lib/dri \
	-Dglx=dri \
	-Dplatforms=x11,wayland \
	-Dgallium-drivers=i915,crocus,nouveau \
	-Dvulkan-drivers="" \
	-Degl=enabled \
	-Dgles1=enabled \
	-Dgles2=enabled \
	-Dopengl=true \
	-Dllvm=enabled \
	-Dshared-llvm=enabled \
	-Dlibunwind=disabled \
	-Dshared-glapi=enabled \
	-Dvalgrind=disabled \
	-Db_lto=false \
	-Dmicrosoft-clc=disabled \
	-Dgallium-rusticl=false \
	-Dgallium-extra-hud=false \
	-Dvideo-codecs=all

CFLAGS = -O2 -g1
CXXFLAGS = -O2 -g1
CPPFLAGS = -O2 -g1

export CFLAGS CXXFLAGS CPPFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
