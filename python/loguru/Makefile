COMMENT = Python logging made (stupidly) simple
VERSION = 0.7.3
REVISION = 0
CATEGORIES = python
PKGNAME = loguru
HOMEPAGE = https://github.com/Delgan/loguru
ARCHIVE = 0.7.3.tar.gz
LINK = https://github.com/Delgan/loguru/archive/refs/tags/0.7.3.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = loguru-0.7.3

prepare:

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
