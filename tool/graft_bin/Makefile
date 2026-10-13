COMMENT = A package management utility (version 2.16) binary edition.
VERSION = 2.17
REVISION = 0
CATEGORIES = tool
PKGNAME = graft_bin
HOMEPAGE = https://peters.gormand.com.au/Home/tools/graft
ARCHIVE = download?id=1mdQp9wjRPil7TMws3T8C-ZZuZA1ur8ak 
ID = 1mdQp9wjRPil7TMws3T8C-ZZuZA1ur8ak
LINK = https://drive.usercontent.google.com/download?id=${ID}&export=download&authuser=0
SRCCD = archive
BUILD = make
BUILDDIR = graft-2.17
MAKEOPT = PACKAGEDIR=/usr/pkg \
	TARGETDIR=/ \
	BIN="$(CURDIR)/package/usr/bin" \
	MAN="$(CURDIR)/package/usr/share/man" \
	DOC="$(CURDIR)/package/usr/share/doc"
STRIP = no

prepare:
	cp -f ${BUILDDIR}/Makefile.dist ${BUILDDIR}/Makefile

post_build:
	pp -o package/usr/bin/graft_bin package/usr/bin/graft
	mv package/usr/bin/graft package/usr/bin/graft.pl
	#
	mkdir -p package/opt/bin
	ln -s /usr/bin/graft_bin package/opt/bin/graft
	#
	for i in html pdf txt; do mv package/usr/share/doc/graft.$$i \
		package/usr/share/doc/graft_bin.$$i; done
	#
	mv package/usr/share/man/man1/graft.1 \
		package/usr/share/man/man1/graft_bin.1
	rm package/usr/share/doc/.nograft

post-install:

include /usr/share/mk/lfs.port.mk
