COMMENT = Sphinx applehelp extension
VERSION = 2.0.0
REVISION = 0
CATEGORIES = python
PKGNAME = sphinxcontrib_applehelp
HOMEPAGE = https://pypi.org/project/sphinxcontrib-applehelp
ARCHIVE = sphinxcontrib_applehelp-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/s/sphinxcontrib-applehelp/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = sphinxcontrib_applehelp-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
