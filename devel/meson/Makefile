COMMENT = A high performance build system
VERSION = 1.10.2
REVISION = 0
CATEGORIES = devel
PKGNAME = meson
HOMEPAGE = https://www.mesonbuild.com
ARCHIVE = meson-${VERSION}.tar.gz
LINK = https://github.com/mesonbuild/meson/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = meson-${VERSION}

prepare:

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
