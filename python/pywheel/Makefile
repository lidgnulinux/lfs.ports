COMMENT = built-package format for Python
VERSION = 0.46.1
REVISION = 1
CATEGORIES = python
PKGNAME = pywheel
HOMEPAGE = https://github.com/pypa/wheel
ARCHIVE = wheel-0.46.1.tar.gz
LINK = https://files.pythonhosted.org/packages/source/w/wheel/wheel-0.46.1.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = wheel-0.46.1

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
