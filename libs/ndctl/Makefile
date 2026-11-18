COMMENT = Utility library for managing the libnvdimm (non-volatile memory device) sub-system in the Linux kernel
VERSION = 85
REVISION = 0
CATEGORIES = libs
PKGNAME = ndctl
HOMEPAGE = https://github.com/pmem/ndctl
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/pmem/ndctl/archive/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = ndctl-${VERSION}
BUILD_OPTION = -Ddocs=disabled -Dasciidoctor=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
