COMMENT = Syntax highlighting package written in Python
VERSION = 2.21.0
REVISION = 0
CATEGORIES = python
PKGNAME = pygments
HOMEPAGE = https://pygments.org/
SRCCD = archive
ARCHIVE = pygments-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/P/Pygments/${ARCHIVE}
BUILD = custom
BUILDDIR = pygments-${VERSION} 

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg \
		.dist/pygments*.whl
	mkdir -p $(CURDIR)/pkg/usr/bin
	cd ${BUILDDIR}; ln -s pygmentize $(CURDIR)/pkg/usr/bin/pygmentize-3

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
