COMMENT = Qt-based screenshot tool that provides many annotation features
VERSION = 1.11.0.c059f022c
_SHA = 059f022cb9c4bdd30d3e8311eb9199ca92fed4f3
REVISION = 0
CATEGORIES = tool
PKGNAME = ksnip
HOMEPAGE = https://github.com/ksnip/ksnip/
ARCHIVE = ${_SHA}.tar.gz
LINK = https://github.com/ksnip/ksnip/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = ksnip-${_SHA}
BUILD_OPTION = -DBUILD_WITH_QT6=ON

prepare:
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/fix-Qt6-GuiPrivate-missing.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
