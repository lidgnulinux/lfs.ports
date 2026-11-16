COMMENT = Python3 definitions of world timezone
VERSION = 2026.6
REVISION = 0
CATEGORIES = python
PKGNAME = pytz
HOMEPAGE = https://pythonhosted.org/pytz/
ARCHIVE = pytz-${VERSION}.tar.gz
LINK = https://pypi.python.org/packages/source/p/pytz/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = pytz-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
