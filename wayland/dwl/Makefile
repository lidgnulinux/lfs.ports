COMMENT = dwm for Wayland
VERSION = 0.10.c0996407e
_SHA = 0996407e3d736ea76f58e7a368b73964bb1ce1de
REVISION = 1
CATEGORIES = wayland
PKGNAME = dwl
HOMEPAGE = https://codeberg.org/dwl/dwl
SRCCD = archive
ARCHIVE = ${_SHA}.tar.gz
LINK = https://codeberg.org/dwl/dwl/archive/${ARCHIVE}
BUILD = make
BUILDDIR = dwl

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/00_vanity-gaps_commit_0996407e.patch

post_build:
	mv package/usr/bin/dwl package/usr/bin/dwl-gaps
	sed -i 's/dwl/dwl-gaps/' package/usr/share/wayland-sessions/dwl.desktop
	mv package/usr/share/wayland-sessions/dwl.desktop \
		package/usr/share/wayland-sessions/dwl-gaps.desktop
	mv package/usr/share/man/man1/dwl.1 \
		package/usr/share/man/man1/dwl-gaps.1
	mkdir -p package/usr/share/dwl
	cp -r 00_vanity-gaps_commit_0996407e.patch package/usr/share/dwl

post-install:

include /usr/share/mk/lfs.port.mk
