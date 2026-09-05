COMMENT = A perl module for parsing XML documents
VERSION = 2.59
REVISION = 1
CATEGORIES = perl
PKGNAME = perl_xml_parser
HOMEPAGE = https://metacpan.org/release/XML-Parser/
ARCHIVE = XML-Parser-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/T/TO/TODDR/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = XML-Parser-${VERSION}
export CFLAGS = -D_REENTRANT -D_GNU_SOURCE -fwrapv \
	-fno-strict-aliasing -pipe -fstack-protector-strong \
	-I/usr/local/include -D_LARGEFILE_SOURCE \
	-D_FILE_OFFSET_BITS=64 -D_FORTIFY_SOURCE=2
STRIP = no

prepare:
	cd ${BUILDDIR}; PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL INSTALLDIRS=vendor

post_build:
	find $(PWD)/package \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
