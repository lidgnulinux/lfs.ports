COMMENT = use modules bundled in inc/ if they are newer than installed ones
VERSION = 0.500
REVISION = 0
CATEGORIES = perl
PKGNAME = inc_latest
HOMEPAGE = https://metacpan.org/release/inc-latest/
SRCCD = archive
ARCHIVE = inc-latest-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/${ARCHIVE}
BUILD = make
BUILDDIR = inc-latest-${VERSION}
MAKEOPT =
export CFLAGS=$(perl -MConfig -E 'say $Config{ccflags}')

prepare:
	cd ${BUILDDIR}; PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL INSTALLDIRS=vendor

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
