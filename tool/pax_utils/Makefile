COMMENT = ELF related utils for ELF 32/64 binaries
VERSION = 1.3.8
REVISION = 0
CATEGORIES = tool
PKGNAME = pax_utils
HOMEPAGE = https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities
ARCHIVE = pax-utils-1.3.8.tar.xz
LINK = https://dev.gentoo.org/~sam/distfiles/app-misc/pax-utils/pax-utils-1.3.8.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = pax-utils-1.3.8
BUILD_OPTION = -Dlddtree_implementation=python \
	-Duse_seccomp=false \
	-Duse_libcap=enabled \
	-Dtests=false

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
