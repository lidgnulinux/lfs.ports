COMMENT = Cython is an optimising static compiler for both the Python & the extended Cython programming languages.
VERSION = 3.2.4
REVISION = 0
CATEGORIES = python
PKGNAME = cython
HOMEPAGE = https://cython.org/
ARCHIVE = 3.2.4.tar.gz
LINK = https://github.com/cython/cython/archive/3.2.4.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = cython-3.2.4

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
