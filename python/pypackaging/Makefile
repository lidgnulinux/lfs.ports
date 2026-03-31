COMMENT = Core utilities for Python3 packages
VERSION = 26.0
REVISION = 0
CATEGORIES = python
PKGNAME = pypackaging
HOMEPAGE = https://pypi.org/project/packaging
ARCHIVE = packaging-26.0.tar.gz 
LINK = https://files.pythonhosted.org/packages/source/p/packaging/packaging-26.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = packaging-26.0

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel
	cd ${BUILDDIR} && PYTHONPATH=src python3 -m installer \
		--destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
