COMMENT = next-gen framework for building desktop widgets using python
VERSION = r222.c7809cc83
REVISION = 0
CATEGORIES = python
PKGNAME = fabric
HOMEPAGE = https://github.com/Fabric-Development/fabric
SRCCD = git
BUILD = custom
BUILDDIR = fabric

prepare:

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
