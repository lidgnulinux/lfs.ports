COMMENT = Deletes unneeded files to free disk space and maintain privacy
VERSION = 6.0.1
REVISION = 0
CATEGORIES = tool
PKGNAME = bleachbit
HOMEPAGE = https://github.com/bleachbit/bleachbit
ARCHIVE = v${VERSION}.tar.gz
LINK = ${HOMEPAGE}/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = bleachbit-${VERSION}
BUILD_OPTION = 
MAKEOPT = "prefix=/usr"
STRIP = no

prepare:

post_build:

post-install:
	@echo "Bleachbit is a tool to Deletes unneeded files to free disk space and maintain privacy"

include /usr/share/mk/lfs.port.mk
