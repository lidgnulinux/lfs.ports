COMMENT = Install shared files
VERSION = 0.14
REVISION = 0
CATEGORIES = perl
PKGNAME = file_sharedir_install
HOMEPAGE = https://metacpan.org/release/File-ShareDir-Install/
ARCHIVE = File-ShareDir-Install-0.14.tar.gz
LINK = https://cpan.metacpan.org/authors/id/E/ET/ETHER/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = File-ShareDir-Install-0.14
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL INSTALLDIRS=vendor
	make -C ${BUILDDIR}
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(PWD)/pkg install

post_build:
	find $(PWD)/pkg \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
