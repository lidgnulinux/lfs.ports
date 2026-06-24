COMMENT = Python bindings for libxml2/libxslt
VERSION = 6.1.1
REVISION = 0
CATEGORIES = python
PKGNAME = lxml
HOMEPAGE = https://lxml.de/
ARCHIVE = lxml-6.1.1.tar.gz
LINK = https://files.pythonhosted.org/packages/source/l/lxml/lxml-6.1.1.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = lxml-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
