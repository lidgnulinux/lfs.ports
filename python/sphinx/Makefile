COMMENT = Python Documentation Generator
VERSION = 9.1.0
REVISION = 0
CATEGORIES = python
PKGNAME = sphinx
HOMEPAGE = https://www.sphinx-doc.org/
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/sphinx-doc/sphinx/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = sphinx-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
