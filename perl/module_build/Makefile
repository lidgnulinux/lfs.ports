COMMENT = Build and install Perl modules
VERSION = 0.4234
REVISION = 0
CATEGORIES = perl
PKGNAME = module_build
HOMEPAGE = https://metacpan.org/release/Module-Build/
ARCHIVE = Module-Build-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/L/LE/LEONT/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = Module-Build-${VERSION}
CFLAGS = $(perl -MConfig -E 'say $Config{ccflags}')
export CFLAGS
STRIP = no

prepare:

custom-build:
	cd ${BUILDDIR}; perl Build.PL --installdirs=vendor
	cd ${BUILDDIR}; ./Build
	cd ${BUILDDIR}; ./Build install --destdir="$(PWD)/pkg"

post_build:
	find pkg \( -name perllocal.pod -o -name .packlist \) -delete

post-install:

include /usr/share/mk/lfs.port.mk
