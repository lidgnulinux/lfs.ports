COMMENT = Object-oriented approach to text processing
VERSION = 3.3.3
REVISION = 0
CATEGORIES = python
PKGNAME = pyparsing
HOMEPAGE = https://github.com/pyparsing/pyparsing
SRCCD = archive
ARCHIVE = pyparsing-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/pyparsing/${ARCHIVE}
BUILD = custom
BUILDDIR = pyparsing-${VERSION} 

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
