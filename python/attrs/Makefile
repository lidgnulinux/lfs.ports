COMMENT = Python classes without boilerplate
VERSION = 26.1.0
REVISION = 0
CATEGORIES = python
PKGNAME = attrs
HOMEPAGE = http://www.attrs.org
SRCCD = archive
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/python-attrs/attrs/archive/${ARCHIVE}
BUILD = custom
BUILDDIR = attrs-${VERSION}

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/no-fancy.patch

custom-build:
	cd ${BUILDDIR}; SETUPTOOLS_SCM_PRETEND_VERSION=${VERSION} \
		gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
