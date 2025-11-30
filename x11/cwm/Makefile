COMMENT = Fork of calmwm, a clean and lightweight window manager.
VERSION = 7.4
REVISION = 1
CATEGORIES = x11-wm
PKGNAME = cwm
HOMEPAGE = https://github.com/leahneukirchen/cwm
LINK = https://leahneukirchen.org/releases/cwm-${VERSION}.tar.gz
ARCHIVE = cwm-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = cwm-${VERSION}
BUILD_OPTION =
POST_BUILD = install -Dm644 cwm.desktop package/usr/share/xsessions/cwm.desktop 

include /usr/share/mk/lfs.port.mk
