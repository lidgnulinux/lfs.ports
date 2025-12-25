COMMENT = Modular textUI IRC client with IPv6 support
VERSION = 1.4.5
REVISION = 0
CATEGORIES = tool
PKGNAME = irssi
HOMEPAGE = https://irssi.org/
ARCHIVE = irssi-1.4.5.tar.xz
LINK = https://github.com/irssi/irssi/releases/download/1.4.5/irssi-1.4.5.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = irssi-1.4.5
BUILD_OPTION = -Dwith-perl=no \
	-Denable-true-color=yes \
	-Ddefault_library=both

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/perl-again.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
