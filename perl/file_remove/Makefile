COMMENT = Remove files and directories
VERSION = 1.61
REVISION = 0
CATEGORIES = perl
PKGNAME = file_remove
HOMEPAGE = https://metacpan.org/release/File-Remove/
ARCHIVE = File-Remove-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/S/SH/SHLOMIF/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = File-Remove-${VERSION}
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
