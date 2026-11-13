COMMENT = Multimedia processing graphs
VERSION = 1.6.11
REVISION = 0
CATEGORIES = media
PKGNAME = pipewire
HOMEPAGE = https://pipewire.org/
ARCHIVE = pipewire-${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/PipeWire/pipewire/-/archive/${VERSION}/pipewire-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = pipewire-${VERSION}
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
	-Dbluez5-codec-lc3=enabled \
	-Dbluez5-backend-native-mm=disabled \
	-Dsnap=disabled \
	-Dsystemd-system-service=enabled \
	-Dudevrulesdir=/usr/lib/udev/rules.d \
	-Drlimits-install=false \
	-Dselinux=disabled \
	-Dsession-managers=[]

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
