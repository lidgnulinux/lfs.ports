COMMENT = Canonical source for classifiers on PyPI
VERSION = 2026.9.21.13
REVISION = 0
CATEGORIES = python
PKGNAME = trove_classifiers
HOMEPAGE = https://github.com/pypa/trove-classifiers
SRCCD = archive
ARCHIVE = py3-trove-classifiers-${VERSION}.tar.gz
LINK = https://github.com/pypa/trove-classifiers/archive/${VERSION}/${ARCHIVE}
BUILD = custom
BUILDDIR = trove-classifiers-${VERSION}

prepare:
	echo "Version: ${VERSION}" > ${BUILDDIR}/PKG-INFO

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/trove_classifiers-${VERSION}-py3-none-any.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
