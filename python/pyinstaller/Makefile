COMMENT = low-level library for installing from a Python wheel distribution
VERSION = 1.0.1
REVISION = 0
CATEGORIES = python
PKGNAME = pyinstaller
HOMEPAGE = https://github.com/pypa/installer
ARCHIVE = installer-1.0.1.tar.lz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-installer/installer-1.0.1.tar.lz 
SRCCD = archive
BUILD = custom
BUILDDIR = installer-1.0.1
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && python3 -m flit_core.wheel \
		&& PYTHONPATH=src python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
