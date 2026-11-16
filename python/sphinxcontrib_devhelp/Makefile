COMMENT = Sphinx devhelp extension
VERSION = 2.0\.0
REVISION = 0
CATEGORIES = python
PKGNAME = sphinxcontrib_devhelp
HOMEPAGE = https://pypi.org/project/sphinxcontrib-devhelp
ARCHIVE = ${VERSION}.tar.gz 
LINK = https://github.com/sphinx-doc/sphinxcontrib-devhelp/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = sphinxcontrib-devhelp-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
