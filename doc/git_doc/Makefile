COMMENT = Documentation for git (Distributed version control system)
VERSION = 2.53.0
REVISION = 0
CATEGORIES = doc
PKGNAME = git_doc
HOMEPAGE = https://www.git-scm.com/
ARCHIVE = git-2.53.0.tar.xz
LINK = https://www.kernel.org/pub/software/scm/git/git-2.53.0.tar.xz
SRCCD = archive
BUILD = custom
BUILDDIR = git-2.53.0

prepare:
	mkdir -p pkg/
	mkdir -p pkg/usr/share/man/man5

custom-build:
	make -C ${BUILDDIR} prefix=/usr man
	make -C ${BUILDDIR} prefix=/usr install-man DESTDIR="$(PWD)/pkg"
	find ${BUILDDIR}/Documentation -name "*.1" -exec cp -r {} $(PWD)/pkg/usr/share/man/man1 \; 
	find ${BUILDDIR}/Documentation -name "*.5" -exec cp -r {} $(PWD)/pkg/usr/share/man/man5 \; 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
