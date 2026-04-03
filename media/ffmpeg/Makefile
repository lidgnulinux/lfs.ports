COMMENT = Complete and free Internet live audio and video broadcasting solution for Linux/Unix
VERSION = 8.1
REVISION = 0
CATEGORIES = media
PKGNAME = ffmpeg
HOMEPAGE = https://ffmpeg.org/
ARCHIVE = ffmpeg-8.1.tar.xz
LINK = https://ffmpeg.org/releases/ffmpeg-8.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = ffmpeg-8.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--disable-librtmp \
	--disable-lzma \
	--disable-static \
	--disable-stripping \
	--disable-doc \
	--disable-htmlpages \
	--disable-manpages \
	--disable-podpages \
	--disable-txtpages \
	--enable-avfilter \
	--enable-gpl \
	--enable-ladspa \
	--enable-libaom \
	--enable-libass \
	--enable-libbluray \
	--enable-libdav1d \
	--enable-libdrm \
	--enable-libfontconfig \
	--enable-libfreetype \
	--enable-libfribidi \
	--enable-libharfbuzz \
	--enable-libmp3lame \
	--enable-libopus \
	--enable-libplacebo \
	--enable-libsoxr \
	--enable-libsrt \
	--enable-libv4l2 \
	--enable-libx264 \
	--enable-libxcb \
	--enable-libxml2 \
	--enable-pic \
	--enable-pthreads \
	--enable-shared \
	--enable-libvorbis \
	--enable-vaapi \
	--enable-vdpau \
	--enable-version3 \
	--enable-vulkan \
	--enable-asm \
	--enable-libssh \
	--enable-libpulse \
	--disable-openssl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
