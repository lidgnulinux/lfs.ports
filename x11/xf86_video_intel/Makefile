COMMENT = Video driver for the Xorg X server supporting Intel chipsets.
VERSION = 20230223
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_video_intel
HOMEPAGE = https://cgit.freedesktop.org/xorg/driver/xf86-video-intel
ARCHIVE = xf86-video-intel-20230223.tar.xz
LINK = https://anduin.linuxfromscratch.org/BLFS/xf86-video-intel/xf86-video-intel-20230223.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-video-intel-20230223
AUTO_CONF = (cd ${BUILDDIR} && ./autogen.sh \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-kms-only \
	--enable-uxa)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
