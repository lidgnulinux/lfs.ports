COMMENT = Simple wrapper around optparse for powerful command line utilities
VERSION = 8.3.2
REVISION = 0
CATEGORIES = python
PKGNAME = click
HOMEPAGE = https://click.palletsprojects.com/
ARCHIVE = python-click-8.3.2.tar.gz
LINK = https://github.com/pallets/click/archive/8.3.2/python-click-8.3.2.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = click-8.3.2

prepare:

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
