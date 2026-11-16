COMMENT = Snowball stemming library collection for Python3
VERSION = 3.0.1
REVISION = 0
CATEGORIES = python
PKGNAME = snowballstemmer
HOMEPAGE = https://github.com/shibukawa/snowball_py
ARCHIVE = snowballstemmer-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/s/snowballstemmer/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = snowballstemmer-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
