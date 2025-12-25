COMMENT = Video player based on MPlayer/mplayer2
VERSION = 0.41.0
REVISION = 0
CATEGORIES = media
PKGNAME = mpv
HOMEPAGE = https://mpv.io/
ARCHIVE = mpv-v0.41.0.tar.gz
LINK = https://github.com/mpv-player/mpv/archive/v0.41.0/mpv-v0.41.0.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = mpv-0.41.0
BUILD_OPTION = -Dalsa=enabled \
	-Dbuild-date=false \
	-Dcaca=enabled \
	-Ddrm=enabled \
	-Degl-drm=enabled \
	-Degl-wayland=enabled \
	-Degl-x11=enabled \
	-Degl=enabled \
	-Dgl=enabled \
	-Djack=enabled \
	-Dlibmpv=true \
	-Dpulse=enabled \
	-Dtests="false" \
	-Duchardet=enabled \
	-Dvdpau=disabled \
	-Dvulkan=disabled \
	-Dx11=enabled

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
