COMMENT = Python3 i18n tool
VERSION = 2.18.0
REVISION = 0
CATEGORIES = python
PKGNAME = babel
HOMEPAGE = https://babel.pocoo.org/
ARCHIVE = babel-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/b/babel/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = babel-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
