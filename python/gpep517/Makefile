COMMENT = Minimal backend script to aid installing Python packages through PEP 517-compliant build systems
VERSION = 20
REVISION = 0
CATEGORIES = python
PKGNAME = gpep517
HOMEPAGE = https://github.com/gentoo/gpep517/
SRCCD = archive
ARCHIVE = gpep517-v${VERSION}.tar.gz
LINK = https://github.com/gentoo/gpep517/archive/v${VERSION}/${ARCHIVE}
BUILD = custom
BUILDDIR = gpep517-${VERSION}
SITEDIR = /usr/lib/python3.14/site-packages

prepare:
	mkdir -p $(CURDIR)/pkg/${SITEDIR}

custom-build:
	cd ${BUILDDIR}; find gpep517 -name "*.orig" -delete
	cd ${BUILDDIR}; cp -a gpep517 $(CURDIR)/pkg/${SITEDIR}
	python3 -m compileall $(CURDIR)/pkg/${SITEDIR}
	install -Dm755 $(CURDIR)//gpep517 -t $(CURDIR)/pkg/usr/bin

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
