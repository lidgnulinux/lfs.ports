COMMENT = efficient dynamic menu for wayland (wld)
VERSION = 5.4.c5a218d80
REVISION = 1
CATEGORIES = wayland
PKGNAME = neumenu
HOMEPAGE = https://git.sr.ht/~uint/neumenu
SRCCD = git 
BUILD = make
BUILDDIR = neumenu
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/fix_pixman_linking.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/fix_conflicting_neumenu_path.patch
	vim ${BUILDDIR}/config.def.h

post_build:
	mv package/usr/bin/stest package/usr/bin/stest-neumenu

post-install:

include /usr/share/mk/lfs.port.mk
