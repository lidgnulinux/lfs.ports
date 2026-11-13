COMMENT = Reference implementation of the Linux FUSE (Filesystem in Userspace) interface.
VERSION = 3.18.3
REVISION = 0
CATEGORIES = libs
PKGNAME = fuse3
HOMEPAGE = https://github.com/libfuse/libfuse/
ARCHIVE = fuse-${VERSION}.tar.gz
LINK = https://github.com/libfuse/libfuse/releases/download/fuse-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = fuse-${VERSION}
BUILD_OPTION = -Dinitscriptdir="" \
	--default-library=both \
	--sbindir=/sbin

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
