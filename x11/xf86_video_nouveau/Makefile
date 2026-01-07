COMMENT = Nouveau video driver for the Xorg X server.
VERSION = 1.0.18
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_video_nouveau
HOMEPAGE = https://nouveau.freedesktop.org/
ARCHIVE = xf86-video-nouveau-1.0.18.tar.xz
LINK = https://www.x.org/archive/individual/driver/xf86-video-nouveau-1.0.18.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-video-nouveau-1.0.18
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
