COMMENT = Object-oriented approach to text processing
VERSION = 3.3.2
REVISION = 0
CATEGORIES = python
PKGNAME = pyparsing
HOMEPAGE = https://github.com/pyparsing/pyparsing
ARCHIVE = pyparsing-3.3.2.tar.gz
LINK = https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.3.2.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = pyparsing-3.3.2

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
