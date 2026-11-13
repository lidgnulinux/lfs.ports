COMMENT = MirBSD Korn Shell
VERSION = 59c
REVISION = 0
CATEGORIES = shell
PKGNAME = mksh
HOMEPAGE = https://www.mirbsd.org/mksh
ARCHIVE = mksh-R59c.tgz
LINK = http://www.mirbsd.org/MirOS/dist/mir/mksh/mksh-R59c.tgz
SRCCD = archive
BUILD = custom
BUILDDIR = mksh
BUILD_OPTION =
MAKEOPT =

prepare:
	mkdir $(CURDIR)/pkg

custom-build:
	cd ${BUILDDIR} && sh Build.sh -r
	install -Dm755 ${BUILDDIR}/mksh pkg/bin/mksh
	install -Dm644 ${BUILDDIR}/dot.mkshrc pkg/etc/skel/.mkshrc
	install -Dm644 ${BUILDDIR}/mksh.1 pkg/usr/share/man/man1/mksh.1

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
