COMMENT = dwm for Wayland
VERSION = 0.8.c99cdc9a8
_SHA = 99cdc9a825ea54ead1415bea301996aef2e6af75
REVISION = 0
CATEGORIES = wayland
PKGNAME = dwl
HOMEPAGE = https://codeberg.org/dwl/dwl
SRCCD = archive
ARCHIVE = ${_SHA}.tar.gz
LINK = https://codeberg.org/dwl/dwl/archive/${ARCHIVE}
BUILD = make
BUILDDIR = dwl

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_vanity-gaps_commit_99cdc9a8.patch

post_build:
	mv package/usr/bin/dwl package/usr/bin/dwl-gaps
	sed -i 's/dwl/dwl-gaps/' package/usr/share/wayland-sessions/dwl.desktop
	mv package/usr/share/wayland-sessions/dwl.desktop \
		package/usr/share/wayland-sessions/dwl-gaps.desktop
	mv package/usr/share/man/man1/dwl.1 \
		package/usr/share/man/man1/dwl-gaps.1
	mkdir -p package/usr/share/dwl
	cp -r 00_vanity-gaps_commit_99cdc9a8.patch package/usr/share/dwl

post-install:

include /usr/share/mk/lfs.port.mk
