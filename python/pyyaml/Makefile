COMMENT = Python3 bindings for YAML
VERSION = 6.0.3
REVISION = 0
CATEGORIES = python
PKGNAME = pyyaml
HOMEPAGE = https://pyyaml.org/
ARCHIVE = 6.0.3.tar.gz
LINK = https://github.com/yaml/pyyaml/archive/6.0.3.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = pyyaml-6.0.3

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m build --wheel --no-isolation
	cd ${BUILDDIR} && python3 -m installer --destdir "$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
