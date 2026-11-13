COMMENT = library for creating editable wheels
VERSION = 0.6
REVISION = 0
CATEGORIES = python
PKGNAME = editables
HOMEPAGE = https://github.com/pfmoore/editables
SRCCD = archive
ARCHIVE = editables-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/e/editables/${ARCHIVE}
BUILD = custom
BUILDDIR = editables-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
