COMMENT = Provides a way to load and enumerate PKCS 11 modules.
VERSION = 0.25.10
REVISION = 0
CATEGORIES = libs
PKGNAME = p11_kit
HOMEPAGE = https://p11-glue.github.io/p11-glue/p11-kit.html
ARCHIVE = p11-kit-0.25.10.tar.xz
LINK = https://github.com/p11-glue/p11-kit/releases/download/0.25.10/p11-kit-0.25.10.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = p11-kit-0.25.10
BUILD_OPTION = --buildtype=release \
	-Dbackend_max_links=4 \
	-Dlibffi=enabled \
	-Dtest="false" \
	-Dtrust_paths=/etc/pki/anchors

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
