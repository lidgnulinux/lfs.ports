COMMENT = Panel for the Xfce desktop environment
VERSION = 4.20.6
REVISION = 0
CATEGORIES = xapps
PKGNAME = xfce4_panel
HOMEPAGE = https://xfce.org/
ARCHIVE = xfce4-panel-4.20.6.tar.bz2
LINK = https://archive.xfce.org/src/xfce/xfce4-panel/4.20/xfce4-panel-4.20.6.tar.bz2
SRCCD = archive
BUILD = meson
BUILDDIR = xfce4-panel-4.20.6
BUILD_OPTION = -Dgtk-doc=false \
	-Dintrospection=true \
	-Dvala=enabled \
	-Dx11=enabled \
	-Dwayland=enabled \
	-Dgtk-layer-shell=enabled \
	-Ddbusmenu=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
