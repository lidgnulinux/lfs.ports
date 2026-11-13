COMMENT = Perl-compatible regular expression library
VERSION = 10.47
REVISION = 0
CATEGORIES = libs
PKGNAME = pcre2
HOMEPAGE = https://pcre.org/
ARCHIVE = pcre2-10.47.tar.bz2
LINK = https://github.com/PhilipHazel/pcre2/releases/download/pcre2-10.47/pcre2-10.47.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = pcre2-10.47
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
  --enable-jit \
  --enable-pcre2-16 \
  --enable-pcre2-32 \
  --enable-pcre2grep-libz \
  --enable-pcre2grep-libbz2 \
  --enable-pcre2test-libreadline)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
