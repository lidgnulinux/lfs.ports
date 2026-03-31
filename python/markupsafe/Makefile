COMMENT = Implements a XML/HTML/XHTML Markup safe string
VERSION = 3.0.3
REVISION = 0
CATEGORIES = python
PKGNAME = markupsafe
HOMEPAGE = https://github.com/pallets/markupsafe
ARCHIVE = markupsafe-3.0.3.tar.gz
LINK = https://files.pythonhosted.org/packages/source/M/MarkupSafe/markupsafe-3.0.3.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = markupsafe-3.0.3

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
