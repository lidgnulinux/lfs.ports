COMMENT = Locate per-dist and per-module shared files
VERSION = 1.118
REVISION = 0
CATEGORIES = perl
PKGNAME = file_sharedir
HOMEPAGE = https://metacpan.org/release/File-ShareDir/
ARCHIVE = File-ShareDir-1.118.tar.gz
LINK = https://cpan.metacpan.org/authors/id/R/RE/REHSACK/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = File-ShareDir-1.118
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor
	make -C ${BUILDDIR}
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(PWD)/pkg install

post_build:
	find $(PWD)/pkg \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
