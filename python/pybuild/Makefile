COMMENT = Correct PEP517 package builder
VERSION = 1.5.0
REVISION = 0
CATEGORIES = python
PKGNAME = pybuild
HOMEPAGE = https://github.com/pypa/build
ARCHIVE = py3-build-1.5.0.tar.gz
LINK = https://github.com/pypa/build/archive/refs/tags/1.5.0/py3-build-1.5.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = build-1.5.0
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
