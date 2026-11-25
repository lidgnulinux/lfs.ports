COMMENT = setuptools plugin for building mo files
VERSION = 0.1.18
REVISION = 0
CATEGORIES = python
PKGNAME = setuptools_gettext
HOMEPAGE = https://github.com/breezy-team/setuptools-gettext
ARCHIVE = v0.1.18.tar.gz
LINK = https://github.com/breezy-team/setuptools-gettext/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = setuptools-gettext-0.1.18

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; gpep517 install-wheel --destdir $(CURDIR)/pkg \
		.dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
