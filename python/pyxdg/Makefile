COMMENT = A python library to access freedesktop.org standards
VERSION = 0.28
REVISION = 0
CATEGORIES = python
PKGNAME = pyxdg
HOMEPAGE = https://www.freedesktop.org/wiki/Software/pyxdg
ARCHIVE = pyxdg-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/pyxdg/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = pyxdg-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel \
		--wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
