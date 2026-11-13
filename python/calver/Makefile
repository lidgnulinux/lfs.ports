COMMENT = Setuptools extension for CalVer package versions
VERSION = 2025.10.20
REVISION = 0
CATEGORIES = python
PKGNAME = calver
HOMEPAGE = https://github.com/di/calver
SRCCD = archive
ARCHIVE = py3-calver-${VERSION}.tar.gz
LINK = https://github.com/di/calver/archive/${VERSION}/${ARCHIVE}
BUILD = custom
BUILDDIR = calver-${VERSION}

prepare:
	sed "s/@VERSION@/${VERSION}/" -i ${BUILDDIR}/setup.py

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
