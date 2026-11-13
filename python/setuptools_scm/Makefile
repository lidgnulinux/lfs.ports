COMMENT = The blessed package to manage your versions by scm tags
VERSION = 9.2.2
REVISION = 0
CATEGORIES = python
PKGNAME = setuptools_scm
HOMEPAGE = https://github.com/pypa/setuptools_scm
SRCCD = archive
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/pypa/setuptools-scm/archive/refs/tags/${ARCHIVE}
BUILD = custom
BUILDDIR = setuptools-scm-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
