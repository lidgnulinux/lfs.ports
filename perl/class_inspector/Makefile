COMMENT = Class::Inspector perl module
VERSION = 1.36
REVISION = 0
CATEGORIES = perl
PKGNAME = class_inspector
HOMEPAGE = https://metacpan.org/release/Class-Inspector/
ARCHIVE = Class-Inspector-1.36.tar.gz
LINK = https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = Class-Inspector-1.36
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS
STRIP = no

prepare:
	cd ${BUILDDIR}; PERL_MM_USE_DEFAULT=1 perl Makefile.PL INSTALLDIRS=vendor

post_build:
	find $(PWD)/package \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

test:
	echo ${CFLAGS}

include /usr/share/mk/lfs.port.mk
