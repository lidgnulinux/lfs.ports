COMMENT = Sphinx jsmath extension
VERSION = 1.0.1
REVISION = 0
CATEGORIES = python
PKGNAME = sphinxcontrib_jsmath
HOMEPAGE = https://pypi.org/project/sphinxcontrib-jsmath
ARCHIVE = sphinxcontrib-jsmath-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/s/sphinxcontrib-jsmath/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = sphinxcontrib-jsmath-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
