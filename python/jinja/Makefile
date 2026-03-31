COMMENT = A small but fast and easy to use stand-alone python template engine
VERSION = 3.1.6
REVISION = 0
CATEGORIES = python
PKGNAME = jinja2
HOMEPAGE = https://palletsprojects.com/p/jinja/
ARCHIVE = jinja2-3.1.6.tar.gz
LINK = https://files.pythonhosted.org/packages/source/j/jinja2/jinja2-3.1.6.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = jinja2-3.1.6

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
