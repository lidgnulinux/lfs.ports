COMMENT = Command-line copy/paste utilities for Wayland
VERSION = 2.2.1
REVISION = 0
CATEGORIES = wayland
PKGNAME = wl_clipboard
HOMEPAGE = https://github.com/bugaevc/wl-clipboard
ARCHIVE = wl-clipboard-2.2.1.tar.gz
LINK = https://github.com/bugaevc/wl-clipboard/archive/v2.2.1/wl-clipboard-2.2.1.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = wl-clipboard-2.2.1
BUILD_OPTION =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
