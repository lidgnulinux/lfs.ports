COMMENT = Multi-Language Vulkan/GL/GLES/EGL/GLX/WGL Loader-Generator based on the official specs 
VERSION = 2.0.8
REVISION = 0
CATEGORIES = libs
PKGNAME = glad
HOMEPAGE = https://www.makotemplates.org
ARCHIVE = v2.0.8.tar.gz
LINK = https://github.com/Dav1dde/glad/archive/refs/tags/v2.0.8.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = glad-2.0.8

prepare:

custom-build:
	cd ${BUILDDIR} && python -m build --wheel --no-isolation
	cd ${BUILDDIR} && python -m installer --destdir="$(PWD)/pkg" dist/*.whl

post_build:
	mv pkg/usr/pkg/*/usr/* pkg/usr
	rm -rf pkg/usr/pkg

post-install:

include /usr/share/mk/lfs.port.mk
