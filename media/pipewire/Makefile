COMMENT = Multimedia processing graphs
VERSION = 1.6.2
REVISION = 0
CATEGORIES = media
PKGNAME = pipewire
HOMEPAGE = https://pipewire.org/
ARCHIVE = pipewire-1.6.2.tar.gz
LINK = https://gitlab.freedesktop.org/PipeWire/pipewire/-/archive/1.6.2/pipewire-1.6.2.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = pipewire-1.6.2
BUILD_OPTION = -Dlibjack-path=/usr/lib \
	-Dlibv4l2-path=/usr/lib \
	-Ddocs=disabled \
	-Dman=disabled \
	-Dgstreamer=enabled \
	-Dexamples=disabled \
	-Dffmpeg=disabled \
	-Djack-devel=true \
	-Dvulkan=disabled \
	-Dsdl2=disabled \
	-Dlv2=disabled \
	-Dlibcamera=disabled \
	-Droc=disabled \
	-Dlibsystemd=disabled \
	-Dbluez5-codec-lc3=enabled \
	-Dbluez5-backend-native-mm=disabled \
	-Dsession-managers=[]

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
