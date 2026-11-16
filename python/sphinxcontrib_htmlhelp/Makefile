COMMENT = Sphinx htmlhelp extension
VERSION = 2.1.0
REVISION = 0
CATEGORIES = python
PKGNAME = sphinxcontrib_htmlhelp
HOMEPAGE = https://pypi.org/project/sphinxcontrib-htmlhelp
ARCHIVE = sphinxcontrib_htmlhelp-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/s/sphinxcontrib-htmlhelp/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = sphinxcontrib_htmlhelp-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
