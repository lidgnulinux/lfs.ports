COMMENT = Distributed version control system
VERSION = 2.52.0
REVISION = 0
CATEGORIES = devel
PKGNAME = git
HOMEPAGE = https://www.git-scm.com/
ARCHIVE = git-2.52.0.tar.xz
LINK = https://www.kernel.org/pub/software/scm/git/git-2.52.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = git-2.52.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
  --with-libpcre2 \
  --with-tcltk \
  --with-python=python3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT = INSTALLDIRS=vendor

prepare:
	echo -e "NEEDS_CRYPTO_WITH_SSL=1\n\
	INSTALL_SYMLINKS=1" > ${BUILDDIR}/config.mak

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
