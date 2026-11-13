COMMENT = low-level library for installing from a Python wheel distribution
VERSION = 1.1.0
REVISION = 0
CATEGORIES = python
PKGNAME = pyinstaller
HOMEPAGE = https://github.com/pypa/installer
ARCHIVE = installer-1.1.0.tar.lz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-installer/installer-1.1.0.tar.lz 
SRCCD = archive
BUILD = custom
BUILDDIR = installer-1.1.0
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel \
		&& PYTHONPATH=src python3 -m installer --destdir "$(CURDIR)/pkg" dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
