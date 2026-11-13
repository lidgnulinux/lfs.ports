COMMENT = Cython is an optimising static compiler for both the Python & the extended Cython programming languages.
VERSION = 3.3.0
REVISION = 0
CATEGORIES = python
PKGNAME = cython
HOMEPAGE = https://cython.org/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/cython/cython/archive/${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = cython-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(CURDIR)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
