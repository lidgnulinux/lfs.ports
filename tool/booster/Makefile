COMMENT = Fast and secure initramfs generator
VERSION = 0.13
REVISION = 0
CATEGORIES = tool
PKGNAME = booster
HOMEPAGE = https://github.com/anatol/booster
ARCHIVE = booster-${VERSION}.tar.gz
LINK = https://github.com/anatol/booster/archive/refs/tags/${VERSION}/booster-${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = booster-${VERSION}
OPTIONS = --ldflags="-X main.imageModulesDir=/lib/modules/ -X main.firmwareDir=/lib/firmware/"
export GOFLAGS = -trimpath -modcacherw

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/fix-consolefonts.patch

custom-build:
	cd ${BUILDDIR}/generator; go build ${OPTIONS}

init:
	cd ${BUILDDIR}/init; CGO_ENABLED=0 go build -buildmode=default

docs:
	cd ${BUILDDIR}/docs; md2html -i manpage.md -o booster.html

post_build:
	install -Dm644 $(PWD)/booster.yaml pkg/etc/booster.yaml
	install -Dm644 ${BUILDDIR}/docs/booster.html \
		pkg/usr/share/docs/booster/booster.html
	install -Dm755 ${BUILDDIR}/generator/generator pkg/usr/bin/booster
	install -Dm755 ${BUILDDIR}/init/init pkg/usr/lib/booster/init

post-install:

include /usr/share/mk/lfs.port.mk
