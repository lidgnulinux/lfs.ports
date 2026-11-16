COMMENT = Getting image size from png/jpeg/jpeg2000/gif file
VERSION = 1.4.1
REVISION = 0
CATEGORIES = python
PKGNAME = imagesize
HOMEPAGE = https://github.com/shibukawa/imagesize_py
ARCHIVE = imagesize-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/i/imagesize/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = imagesize-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
