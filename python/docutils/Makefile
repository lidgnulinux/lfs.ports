COMMENT = Documentation Utilities for Python3
VERSION = 0.22.2
REVISION = 0
CATEGORIES = python
PKGNAME = docutils
HOMEPAGE = https://pypi.org/project/docutils
ARCHIVE = docutils-0.22.2.tar.gz
LINK = https://files.pythonhosted.org/packages/source/d/docutils/docutils-0.22.2.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = docutils-0.22.2

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
