COMMENT = A perl module for parsing XML documents
VERSION = 2.59
REVISION = 0
CATEGORIES = perl
PKGNAME = perl_xml_parser
HOMEPAGE = https://metacpan.org/release/XML-Parser/
ARCHIVE = XML-Parser-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/T/TO/TODDR/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = XML-Parser-${VERSION}
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS

prepare:

custom-build:
	cd ${BUILDDIR} && PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL INSTALLDIRS=vendor
	make -C ${BUILDDIR}
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(PWD)/pkg install

post_build:
	find $(PWD)/pkg \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
