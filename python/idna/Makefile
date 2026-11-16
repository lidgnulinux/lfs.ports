COMMENT = IDNA 2008 and UTS #46 for Python3
VERSION = 3.20
REVISION = 0
CATEGORIES = python
PKGNAME = idna
HOMEPAGE = https://github.com/kjd/idna
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/kjd/idna/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = idna-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
