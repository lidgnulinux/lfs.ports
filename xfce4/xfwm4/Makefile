COMMENT = Xfce window manager, compatible with Gnome, Gnome2, KDE2, and KDE3
VERSION = 4.20.0
REVISION = 0
CATEGORIES = x11-wm
PKGNAME = xfwm4
HOMEPAGE = https://xfce.org/
ARCHIVE = xfwm4-4.20.0.tar.bz2
LINK = https://archive.xfce.org/src/xfce/xfwm4/4.20/xfwm4-4.20.0.tar.bz2 
SRCCD = archive
BUILD = make
BUILDDIR = xfwm4-4.20.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-compositor \
	--enable-poswin \
	--enable-startup-notification \
	--enable-xpresent \
	--enable-xsync \
	--build=x86_64-pc-linux-musl)
MAKEOPT = 
LDFLAGS = -Wl,--copy-dt-needed-entries
export LDFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
