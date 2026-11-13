COMMENT = Hatch plugin for versioning with your preferred VCS
VERSION = 0.5.0
REVISION = 0
CATEGORIES = python
PKGNAME = hatch_vcs
HOMEPAGE = https://github.com/ofek/hatch-vcs
SRCCD = archive
ARCHIVE = hatch_vcs-${VERSION}.tar.gz
LINK = https://files.pythonhosted.org/packages/source/h/hatch-vcs/${ARCHIVE}
BUILD = custom
BUILDDIR = hatch_vcs-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
