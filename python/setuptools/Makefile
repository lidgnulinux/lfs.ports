COMMENT = Collection of enhancements to the Python3 distutils
VERSION = 82.0.1
REVISION = 0
CATEGORIES = python
PKGNAME = setuptools
HOMEPAGE = https://pypi.org/project/setuptools
ARCHIVE = v82.0.1.tar.gz
LINK = https://github.com/pypa/setuptools/archive/refs/tags/v82.0.1.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = setuptools-82.0.1
STRIP = no

prepare:
	rm -f ${BUILDDIR}/setuptools/*.exe

custom-build:
	cd ${BUILDDIR} && python3 setup.py build install --root="$(PWD)/pkg"

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
