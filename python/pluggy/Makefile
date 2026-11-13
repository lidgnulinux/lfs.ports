COMMENT = Plugin management and hook calling for Python
VERSION = 1.6.0
REVISION = 0
CATEGORIES = python
PKGNAME = pluggy
HOMEPAGE = https://pluggy.readthedocs.io/en/latest/
SRCCD = archive
ARCHIVE = pluggy-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/pluggy/${ARCHIVE}
BUILD = custom
BUILDDIR = pluggy-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; SETUPTOOLS_SCM_PRETEND_VERSION="${VERSION}" \
		gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
