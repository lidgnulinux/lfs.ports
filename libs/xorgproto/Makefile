COMMENT = X Window System Unified Protocol
VERSION = 2025.1
REVISION = 0
CATEGORIES = libs
PKGNAME = xorgproto
HOMEPAGE = https://www.x.org
ARCHIVE = xorgproto-${VERSION}.tar.xz
LINK = https://www.x.org/releases/individual/proto/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = xorgproto-${VERSION}
BUILD_OPTION = -Dlegacy=true

prepare:

post_build:
	rm build/package/usr/include/X11/extensions/vldXvMC.h

post-install:

include /usr/share/mk/lfs.port.mk
