COMMENT = somewm - AwesomeWM for Wayland
VERSION = 1.4.3
REVISION = 0
CATEGORIES = wayland
PKGNAME = somewm
HOMEPAGE = https://github.com/trip-zip/somewm
SRCCD = archive
ARCHIVE = v${VERSION}.tar.gz
LINK = ${HOMEPAGE}/archive/refs/tags/${ARCHIVE}
BUILD = meson
BUILDDIR = somewm-${VERSION}
BUILD_OPTION = -Dtest_pam=false \
	-Dsystemd=disabled \
	-Dbench=false

prepare:
	patch -d ${BUILDDIR} -i $(CURDIR)/unsupported_dlvsym_musl_fix-1.4.3.diff

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
