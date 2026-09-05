COMMENT = Standalone, extensible Perl module installer
VERSION = 1.21
REVISION = 0
CATEGORIES = perl
PKGNAME = module_install
HOMEPAGE = https://metacpan.org/release/Module-Install/
ARCHIVE = Module-Install-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/E/ET/ETHER/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = Module-Install-${VERSION}
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS
STRIP = no

prepare:
	cd ${BUILDDIR} && PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL INSTALLDIRS=vendor

post_build:
	find $(PWD)/package \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
