COMMENT = Parameterized testing with any Python test framework
VERSION = 0.9.0
REVISION = 0
CATEGORIES = python
PKGNAME = parameterized
HOMEPAGE = https://github.com/wolever/parameterized
SRCCD = archive
ARCHIVE = parameterized-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/parameterized/${ARCHIVE}
BUILD = custom
BUILDDIR = parameterized-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/parameterized*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
