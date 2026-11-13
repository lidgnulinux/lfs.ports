COMMENT = Python3 fast templating language
VERSION = 1.4.3
REVISION = 0
CATEGORIES = python
PKGNAME = mako
HOMEPAGE = https://www.makotemplates.org/
ARCHIVE = mako-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/M/Mako/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = mako-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(CURDIR)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
