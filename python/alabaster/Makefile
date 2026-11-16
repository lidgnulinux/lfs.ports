COMMENT = Lightweight, configurable Sphinx theme
VERSION = 1.0.0
REVISION = 0
CATEGORIES = python
PKGNAME = alabaster
HOMEPAGE = https://alabaster.readthedocs.io/en/latest/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/sphinx-doc/alabaster/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = alabaster-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
