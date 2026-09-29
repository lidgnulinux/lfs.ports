COMMENT = HTML parser class
VERSION = 3.85
REVISION = 0
CATEGORIES = perl
PKGNAME = html_parser
HOMEPAGE = https://metacpan.org/release/HTML-Parser/
ARCHIVE = HTML-Parser-${VERSION}.tar.gz
LINK = https://cpan.metacpan.org/authors/id/O/OA/OALDERS/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = HTML-Parser-${VERSION}
MAKEOPT =
export CFLAGS = -D_REENTRANT -D_GNU_SOURCE -fwrapv \
	-fno-strict-aliasing -pipe -fstack-protector-strong \
	-I/usr/local/include -D_LARGEFILE_SOURCE \
	-D_FILE_OFFSET_BITS=64 -D_FORTIFY_SOURCE=2
STRIP = no

prepare:
	cd ${BUILDDIR}; PERL_MM_USE_DEFAULT=1 perl -I. Makefile.PL \
		INSTALLDIRS=vendor \
		NO_PACKLIST=1 \
		NO_PERLLOCAL=1

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
