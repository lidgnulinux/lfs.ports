COMMENT = Call pyproject.toml-based build backend hooks
VERSION = 1.2.0
REVISION = 0
CATEGORIES = python
PKGNAME = pyproject_hooks
HOMEPAGE = https://pypi.org/project/pyproject_hooks
ARCHIVE = pyproject_hooks-1.2.0.tar.gz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-pyproject-hooks/pyproject_hooks-1.2.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = pyproject_hooks-1.2.0 

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr

post-install:

include /usr/share/mk/lfs.port.mk
