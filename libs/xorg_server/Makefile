COMMENT = X.Org X servers
VERSION = 21.1.23
REVISION = 0
CATEGORIES = libs
PKGNAME = xorg_server
HOMEPAGE = https://www.x.org/wiki
ARCHIVE = xorg-server-21.1.23.tar.xz
LINK = https://www.x.org/releases/individual/xserver/xorg-server-21.1.23.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = xorg-server-21.1.23
_FONTROOT="/usr/share/fonts"
BUILD_OPTION = -Dxorg=true \
	-Dxephyr=true \
	-Dglamor=true \
	-Dxnest=true \
	-Dxvfb=true \
	-Dxwin=false \
	-Ddefault_font_path=${_FONTROOT}/misc,${_FONTROOT}/100dpi:unscaled,${_FONTROOT}/75dpi:unscaled,${_FONTROOT}/TTF,${_FONTROOT}/Type1 \
	-Dglx=true \
	-Dxdmcp=true \
	-Dxdm-auth-1=true \
	-Dxcsecurity=true \
	-Dsecure-rpc=false \
	-Dipv6=true \
	-Dxkb_dir=/usr/share/X11/xkb \
	-Dxkb_output_dir=/var/lib/xkb \
	-Dlisten_tcp=false \
	-Dlisten_unix=true \
	-Dlisten_local=true \
	-Dsuid_wrapper=true \
	-Dpciaccess=true \
	-Dudev=true \
	-Dhal=false \
	-Dsystemd_logind=false \
	-Ddpms=true \
	-Ddri1=true \
	-Ddri2=true \
	-Ddri3=true

prepare:
	sed -i -e 's/termio.h/termios.h/' ${BUILDDIR}/hw/xfree86/os-support/xf86_OSlib.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
