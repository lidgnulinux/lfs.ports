COMMENT = Read/Write YAML files with as little code as possible
VERSION = 1.76
REVISION = 0
CATEGORIES = perl
PKGNAME = yaml_tiny
HOMEPAGE = https://metacpan.org/release/YAML-Tiny/
ARCHIVE = YAML-Tiny-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/E/ET/ETHER/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = YAML-Tiny-${VERSION}
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR} && PERL_MM_USE_DEFAULT=1 \
		perl -I. Makefile.PL INSTALLDIRS=vendor NO_PACKLIST=1 NO_PERLLOCAL=1
	make -C ${BUILDDIR}
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(PWD)/pkg install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
