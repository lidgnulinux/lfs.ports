COMMENT = Python3 package for providing Mozilla's CA Bundle
VERSION = 2026.10.23
REVISION = 0
CATEGORIES = python
PKGNAME = certifi
HOMEPAGE = https://pypi.org/project/certifi
ARCHIVE = certifi-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/c/certifi/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = certifi-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
