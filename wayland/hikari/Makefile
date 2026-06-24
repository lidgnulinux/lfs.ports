COMMENT = Stacking Wayland compositor with additional tiling capabilities
VERSION = 3.0.1.c2f0f6d73
REVISION = 1
CATEGORIES = wayland
PKGNAME = hikari
HOMEPAGE = https://codeberg.org/thomasadam/hikari
ARCHIVE = 2f0f6d7387c58cbc72220d9ebc0802f2e97308d9.tar.gz
LINK = https://codeberg.org/thomasadam/hikari/archive/${ARCHIVE}
SRCCD = archive
BUILD = bmake
BUILDDIR = hikari
MAKEOPT = WITH_ALL=YES
MKINST = no
STRIP = no

prepare:
	patch -p1 -d hikari -i $(PWD)/00_musl_attempt_fix.diff
	patch -p1 -d hikari -i $(PWD)/01_add_viewporter.diff

post_build:
	install -Dm755 ${BUILDDIR}/hikari package/usr/bin/hikari
	install -Dm755 ${BUILDDIR}/hikari-unlocker package/usr/bin/hikari-unlocker
	cp -r ${BUILDDIR}/etc package/etc

post-install:

include /usr/share/mk/lfs.port.mk
