COMMENT = Mesa is an OpenGL compatible 3-D graphics library.
VERSION = 26.2.4
REVISION = 0
CATEGORIES = libs
PKGNAME = mesa
HOMEPAGE = https://www.mesa3d.org/
ARCHIVE = mesa-${VERSION}.tar.xz
LINK = https://mesa.freedesktop.org/archive/mesa-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = mesa-${VERSION}
BUILD_OPTION = --buildtype=release -Dglx=dri \
	-Ddri-drivers-path=/usr/lib/dri \
	-Dplatforms=x11,wayland \
	-Dgallium-drivers=i915,crocus,nouveau \
	-Dvulkan-drivers="" \
	-Degl=enabled \
	-Dlibunwind=enabled \
	-Dgles1=enabled \
	-Dgles2=enabled \
	-Dopengl=true \
	-Dllvm=enabled \
	-Dshared-llvm=enabled \
	-Dvalgrind=disabled \
	-Dmicrosoft-clc=disabled \
	-Dgallium-rusticl=false \
	-Dgallium-extra-hud=false \
	-Dvideo-codecs=all
JOBS = -j3

CFLAGS = -O2 -g1
CXXFLAGS = -O2 -g1
CPPFLAGS = -O2 -g1

export CFLAGS CXXFLAGS CPPFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
