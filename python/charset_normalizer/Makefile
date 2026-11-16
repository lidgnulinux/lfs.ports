COMMENT = offers you an alternative to Universal Charset Encoding Detector, also known as Chardet
VERSION = 3.5.1
REVISION = 0
CATEGORIES = python
PKGNAME = charset_normalizer
HOMEPAGE = https://github.com/ousret/charset_normalizer
ARCHIVE = charset_normalizer-${VERSION}.tar.gz 
LINK = https://files.pythonhosted.org/packages/source/c/charset_normalizer/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = charset_normalizer-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
