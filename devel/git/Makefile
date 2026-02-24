.ONESHELL:
SHELL := /bin/sh

COMMENT = Distributed version control system
VERSION = 2.53.0
REVISION = 0
CATEGORIES = devel
PKGNAME = git
HOMEPAGE = https://www.git-scm.com/
ARCHIVE = git-2.53.0.tar.xz
LINK = https://www.kernel.org/pub/software/scm/git/git-2.53.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = git-2.53.0
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
	cat > ${BUILDDIR}/config.mak <<EOF
	NEEDS_CRYPTO_WITH_SSL=1
	INSTALL_SYMLINKS=1
	EOF

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
