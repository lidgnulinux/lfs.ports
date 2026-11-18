COMMENT = Python3 LXML Library
VERSION = 6.1.1
REVISION = 0
CATEGORIES = python
PKGNAME = pylxml
HOMEPAGE = https://lxml.de/
ARCHIVE = lxml-6.1.1.tar.gz
LINK = https://files.pythonhosted.org/packages/source/l/lxml/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = lxml-6.1.1

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--config-json '{"--build-option": ["--with-cython"]}' \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
