COMMENT = Utility for easily changing settings in configuration files
VERSION = 0.7.7
REVISION = 0
CATEGORIES = tool
PKGNAME = setconf
HOMEPAGE = https://setconf.roboticoverlords.org/
ARCHIVE = setconf-0.7.7.tar.xz
LINK = https://setconf.roboticoverlords.org/setconf-0.7.7.tar.xz
SRCCD = archive
BUILD = custom
BUILDDIR = setconf-0.7.7

prepare:

custom-build:
	install -Dm755 ${BUILDDIR}/setconf.py pkg/usr/bin/setconf
	install -Dm644 ${BUILDDIR}/setconf.1.gz pkg/usr/share/man/man1/setconf.1.gz

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
