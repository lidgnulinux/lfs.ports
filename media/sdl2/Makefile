COMMENT = development library designed to provide low level access to audio, keyboard, mouse, joystick and graphics
VERSION = 2.32.10
REVISION = 0
CATEGORIES = media
PKGNAME = sdl2
HOMEPAGE = https://www.libsdl.org
SRCCD = archive
ARCHIVE = SDL2-${VERSION}.tar.gz
LINK = https://www.libsdl.org/release/${ARCHIVE}
BUILD = cmake
BUILDDIR = SDL2-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DCMAKE_JOB_POOLS=thr=3 \
	-DCMAKE_JOB_POOL_LINK=thr \
	-DBUILD_SHARED_LIBS=True \
	-DSDL_TEST=OFF \
	-DSDL_TESTS=OFF \
	-DSDL_ALSA=ON \
	-DSDL_JACK=ON \
	-DSDL_CLOCK_GETTIME=ON \
	-DSDL_ARTS=OFF \
	-DSDL_ESD=OFF \
	-DSDL_NAS=OFF \
	-DSDL_RPATH=OFF \
	-DSDL_X11=ON \
	-DSDL_DIRECTFB=OFF \
	-DSDL_WAYLAND=ON \
	-DSDL_STATIC=ON \
	-DSDL_SHARED=ON \

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
