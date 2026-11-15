COMMENT = Linux ZEN
VERSION = 7.3.4.zen2
REVISION = 0
CATEGORIES = kernel
PKGNAME = linux-zen
HOMEPAGE = https://github.com/zen-kernel/zen-kernel
ARCHIVE = linux-zen-${VERSION}-1-x86_64.pkg.tar.zst 
LINK = https://umea.mirror.pkgbuild.com/extra/os/x86_64/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR =
STRIP = no

prepare:

custom-build:
	mkdir pkg
	cp -r usr pkg/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
