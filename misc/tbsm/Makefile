COMMENT = A pure bash session or application launcher. Inspired by cdm, tdm and krunner
VERSION = 0.7-cf5f6ab3a
REVISION = 0
CATEGORIES = misc
PKGNAME = tbsm
HOMEPAGE = https://github.com/loh-tar/tbsm
LINK = https://github.com/loh-tar/tbsm
SRCCD = git
BUILD = make
BUILDDIR = tbsm
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
