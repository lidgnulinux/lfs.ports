COMMENT = next-gen framework for building desktop widgets using python
VERSION = 0.0.2.cfd2aabbd
_REV = fd2aabbd7e1859aa7c11c626a6c36a937aca736a
REVISION = 0
CATEGORIES = python
PKGNAME = fabric
HOMEPAGE = https://github.com/Fabric-Development/fabric
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/Fabric-Development/fabric/archive/${_REV}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = fabric-${_REV}

prepare:
	cd ${BUILDDIR} && pip install -r requirements.txt  

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
