COMMENT = Python3 fast templating language
VERSION = 1.3.10
REVISION = 0
CATEGORIES = python
PKGNAME = mako
HOMEPAGE = https://www.makotemplates.org/
ARCHIVE = mako-1.3.10.tar.gz
LINK = https://files.pythonhosted.org/packages/source/M/Mako/mako-1.3.10.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = mako-1.3.10

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
