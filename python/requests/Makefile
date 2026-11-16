COMMENT = HTTP request library for Python3
VERSION = 2.34.2
REVISION = 0
CATEGORIES = python
PKGNAME = requests
HOMEPAGE = https://requests.readthedocs.io/
ARCHIVE = requests-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/r/requests/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = requests-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
