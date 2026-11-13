COMMENT = Utility library for gitignore style pattern matching of file paths
VERSION = 1.1.1
REVISION = 0
CATEGORIES = python
PKGNAME = pathspec
HOMEPAGE = https://github.com/cpburnz/python-path-specification
SRCCD = archive
ARCHIVE = pathspec-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/pathspec/${ARCHIVE}
BUILD = custom
BUILDDIR = pathspec-${VERSION} 

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/pathspec-${VERSION}-py3-none-any.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
