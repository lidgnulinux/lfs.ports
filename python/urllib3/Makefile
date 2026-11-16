COMMENT = HTTP library with thread-safe connection pooling, file post, and more
VERSION = 2.8.0
REVISION = 0
CATEGORIES = python
PKGNAME = urllib3
HOMEPAGE = https://urllib3.readthedocs.io/
ARCHIVE = urllib3-${VERSION}.tar.gz
LINK = https://github.com/urllib3/urllib3/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = urllib3-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
