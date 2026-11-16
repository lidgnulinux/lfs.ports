COMMENT = Python library for sorting collections and containers
VERSION = 2.4.0
REVISION = 0
CATEGORIES = python
PKGNAME = sortedcontainers
HOMEPAGE = http://www.grantjenks.com/docs/sortedcontainers
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/grantjenks/python-sortedcontainers/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = python-sortedcontainers-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
