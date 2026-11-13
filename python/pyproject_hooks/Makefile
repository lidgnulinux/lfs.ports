COMMENT = Call pyproject.toml-based build backend hooks
VERSION = 1.3.3
REVISION = 0
CATEGORIES = python
PKGNAME = pyproject_hooks
HOMEPAGE = https://pypi.org/project/pyproject_hooks
ARCHIVE = pyproject_hooks-${VERSION}.tar.gz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-pyproject-hooks/pyproject_hooks-${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = pyproject_hooks-${VERSION} 

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel
	cd ${BUILDDIR} && python3 -m installer --destdir "$(CURDIR)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
