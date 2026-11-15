COMMENT = Some (maybe) usable scripts for SwayWM.
VERSION = 0
REVISION = 0
CATEGORIES = misc
PKGNAME = sway_goodies
HOMEPAGE = https://gitlab.com/lidgnulinux/sway-goodies
LINK = https://gitlab.com/lidgnulinux/sway-goodies
SRCCD = git
BUILD = custom
BUILDDIR = sway-goodies

prepare:

custom-build:
	find ${BUILDDIR}/ -maxdepth 1 -type f -executable -exec install -Dm755 {} -t pkg/usr/bin \;
	install -Dm644 ${BUILDDIR}/README.md -t pkg/usr/share/doc/sway_goodies/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
