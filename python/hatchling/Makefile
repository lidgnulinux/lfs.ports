COMMENT = Modern, extensible Python build backend
VERSION = 1.31.0
REVISION = 0
CATEGORIES = python
PKGNAME = hatchling
HOMEPAGE = https://hatch.pypa.io/latest/
SRCCD = archive
ARCHIVE = hatchling-${VERSION}-py3-none-any.whl
LINK = https://files.pythonhosted.org/packages/py3/h/hatchling/hatchling-${VERSION}-py3-none-any.whl
BUILD = custom
BUILDDIR = $(CURDIR)

prepare:

custom-build:
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		$(CURDIR)/hatchling-${VERSION}-py3-none-any.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
