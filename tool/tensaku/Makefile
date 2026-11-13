COMMENT = Modern screenshot annotation tool for Wayland (binary release)
VERSION = 0.29.0
REVISION = 0
CATEGORIES = tool
PKGNAME = tensaku
HOMEPAGE = https://github.com/jondkinney/tensaku
ARCHIVE = v${VERSION}.tar.gz
SRCCD = archive
LINK = https://github.com/jondkinney/tensaku/releases/download/v${VERSION}/tensaku-v${VERSION}-x86_64.tar.gz 
BUILD = custom
BUILDDIR = $(CURDIR)

prepare:
	mkdir -p pkg/usr

custom-build:
	cp -r ${BUILDDIR}/bin pkg/usr/
	cp -r ${BUILDDIR}/share pkg/usr/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
