COMMENT = CLI for dealing with GitHub
VERSION = 2.83.2
REVISION = 0
CATEGORIES = tool
PKGNAME = gh
HOMEPAGE = https://cli.github.com
ARCHIVE = ${PKGNAME}_${VERSION}_linux_amd64.tar.gz
LINK = https://github.com/cli/cli/releases/download/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = ${PKGNAME}_${VERSION}_linux_amd64

prepare:
	mkdir -p $(PWD)/pkg/usr/bin
	mkdir -p $(PWD)/pkg/usr/share

custom-build:
	cp -r ${BUILDDIR}/bin/* $(PWD)/pkg/usr/bin/
	cp -r ${BUILDDIR}/share/* $(PWD)/pkg/usr/share/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
