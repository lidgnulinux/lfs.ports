COMMENT = Integer to Roman numerals converter
VERSION = 4.1.0
REVISION = 0
CATEGORIES = python
PKGNAME = roman_numerals
HOMEPAGE = https://pypi.org/project/roman-numerals
ARCHIVE = roman-numerals-${VERSION}.tar.gz
LINK = https://github.com/AA-Turner/roman-numerals/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = roman-numerals-${VERSION}/python

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist --output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
