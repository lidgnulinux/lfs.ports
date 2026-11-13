COMMENT = Documentation Utilities for Python3
VERSION = 0.23
REVISION = 0
CATEGORIES = python
PKGNAME = docutils
HOMEPAGE = https://pypi.org/project/docutils
ARCHIVE = docutils-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/d/docutils/docutils-${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = docutils-${VERSION}

prepare:
	  sed -i '/^include =/,/]/d' ${BUILDDIR}/pyproject.toml

custom-build:
	cd ${BUILDDIR} && python3 -m build --wheel --skip-dependency-check --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(CURDIR)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
