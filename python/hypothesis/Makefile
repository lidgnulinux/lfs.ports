COMMENT = Advanced property-based (QuickCheck-like) testing for Python
VERSION = 6.151.12
REVISION = 0
CATEGORIES = python
PKGNAME = hypothesis
HOMEPAGE = https://hypothesis.works/
ARCHIVE = hypothesis-python-${VERSION}.tar.gz
LINK = https://github.com/HypothesisWorks/hypothesis-python/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = hypothesis-hypothesis-python-${VERSION}/hypothesis-python

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
