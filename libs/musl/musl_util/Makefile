COMMENT = Musl utililty.
VERSION = 1.2.5
REVISION = 0
CATEGORIES = tool
PKGNAME = musl_util
HOMEPAGE = https://musl.libc.org/
BUILD = custom
BUILDDIR = $(CURDIR)

prepare:
	mkdir -p pkg/usr/bin
	mkdir -p pkg/sbin

custom-build:
	gcc ${BUILDDIR}/getconf.c -o getconf
	gcc ${BUILDDIR}/getent.c -o getent

post_build:
	install -D ${BUILDDIR}/getconf pkg/usr/bin
	install -D ${BUILDDIR}/getent pkg/usr/bin
	install -D -m755 ${BUILDDIR}/ldconfig pkg/sbin

post-install:

include /usr/share/mk/lfs.port.mk
