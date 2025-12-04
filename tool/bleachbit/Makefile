COMMENT = Deletes unneeded files to free disk space and maintain privacy
VERSION = 5.0.2
REVISION = 0
CATEGORIES = tool
PKGNAME = bleachbit
HOMEPAGE = https://github.com/bleachbit/bleachbit
ARCHIVE = v${VERSION}.tar.gz
LINK = ${HOMEPAGE}/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = bleachbit-${VERSION}

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_usr_as_default_prefix.patch 

post_build:

post-install:
	@echo "Bleachbit is a tool to Deletes unneeded files to free disk space and maintain privacy"

include /usr/share/mk/lfs.port.mk
