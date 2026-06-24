COMMENT = Provides a way to load and enumerate PKCS 11 modules.
VERSION = 0.26.2
REVISION = 0
CATEGORIES = libs
PKGNAME = p11_kit
HOMEPAGE = https://p11-glue.github.io/p11-glue/p11-kit.html
ARCHIVE = p11-kit-0.26.2.tar.xz
LINK = https://github.com/p11-glue/p11-kit/releases/download/0.26.2/p11-kit-0.26.2.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = p11-kit-0.26.2
BUILD_OPTION = --buildtype=release \
	-Dbackend_max_links=4 \
	-Dlibffi=enabled \
	-Dtest="false" \
	-Dtrust_paths=/etc/pki/anchors

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
