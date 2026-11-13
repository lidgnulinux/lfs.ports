COMMENT = Video player based on MPlayer/mplayer2
VERSION = 0.42.0
REVISION = 0
CATEGORIES = media
PKGNAME = mpv
HOMEPAGE = https://mpv.io/
ARCHIVE = mpv-v${VERSION}.tar.gz
LINK = https://github.com/mpv-player/mpv/archive/v${VERSION}/mpv-v${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = mpv-${VERSION}
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
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
