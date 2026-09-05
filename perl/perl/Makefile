COMMENT = Larry Wall's Practical Extraction and Report Language
VERSION = 5.44.0
REVISION = 0
CATEGORIES = perl
PKGNAME = perl
HOMEPAGE = https://www.perl.org/
ARCHIVE = perl-${VERSION}.tar.xz
LINK = https://www.cpan.org/src/5.0/perl-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = perl-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && sh ./Configure -des \
	-Dprefix=/usr \
	-D vendorprefix=/usr \
	-D privlib=/usr/lib/perl5/5.44/core_perl \
	-D archlib=/usr/lib/perl5/5.44/core_perl \
	-D sitelib=/usr/lib/perl5/5.44/site_perl \
	-D sitearch=/usr/lib/perl5/5.44/site_perl \
	-D vendorlib=/usr/lib/perl5/5.44/vendor_perl \
	-D vendorarch=/usr/lib/perl5/5.44/vendor_perl \
	-D man1dir=/usr/share/man/man1 \
	-D man3dir=/usr/share/man/man3 \
	-D pager="/usr/bin/less -isR" \
	-D useshrplib \
	-D usethreads)
MAKEOPT = BUILD_ZLIB=False BUILD_BZIP2=0

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
