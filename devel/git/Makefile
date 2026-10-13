.ONESHELL:
SHELL := /bin/sh

COMMENT = Distributed version control system
VERSION = 2.55.0
REVISION = 0
CATEGORIES = devel
PKGNAME = git
HOMEPAGE = https://www.git-scm.com/
ARCHIVE = git-2.55.0.tar.xz
LINK = https://www.kernel.org/pub/software/scm/git/git-2.55.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = git-2.55.0
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
	WITH_RUST=1
	USE_LIBPCRE2=1
	ZLIB_NG=1
	EOF

doc:
	mkdir -p package/usr/share/man/man5
	$(MAKE) -C ${BUILDDIR} prefix=/usr man
	$(MAKE) -C ${BUILDDIR} prefix=/usr install-man DESTDIR="$(CURDIR)/package"
	find ${BUILDDIR}/Documentation -name "*.1" -exec cp -r {} $(CURDIR)/package/usr/share/man/man1 \;
	find ${BUILDDIR}/Documentation -name "*.5" -exec cp -r {} $(CURDIR)/package/usr/share/man/man5 \;

post_build:
	$(MAKE) doc

post-install:

include /usr/share/mk/lfs.port.mk
