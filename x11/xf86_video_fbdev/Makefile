COMMENT = Video driver for framebuffer device.
VERSION = 0.5.1
REVISION = 0
CATEGORIES = x11
PKGNAME = xf86_video_fbdev
HOMEPAGE = https://www.x.org
ARCHIVE = xf86-video-fbdev-0.5.1.tar.xz
LINK = https://www.x.org/releases/individual/driver/xf86-video-fbdev-0.5.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xf86-video-fbdev-0.5.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-pciaccess)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
