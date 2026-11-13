COMMENT = wlroots implementation of xdg-desktop-portal
VERSION = 0.8.5
REVISION = 0
CATEGORIES = libs
PKGNAME = xdg_desktop_portal_wlr
HOMEPAGE = https://github.com/emersion/xdg-desktop-portal-wlr
SRCCD = archive
ARCHIVE = xdg-desktop-portal-wlr-${VERSION}.tar.gz
LINK = https://github.com/emersion/xdg-desktop-portal-wlr/releases/download/v${VERSION}/${ARCHIVE}
BUILD = meson
BUILDDIR = xdg-desktop-portal-wlr-${VERSION} 
BUILD_OPTION = -Dsystemd=enabled -Dsd-bus-provider=libsystemd

prepare:

post_build:
	install -vDm644 -t build/package/usr/share/xdg-desktop-portal $(CURDIR)/wlr-portals.conf

post-install:

include /usr/share/mk/lfs.port.mk
