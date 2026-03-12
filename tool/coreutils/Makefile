COMMENT = The GNU core utilities (version 9.10).
VERSION = 9.10
REVISION = 0
CATEGORIES = tool
PKGNAME = coreutils
HOMEPAGE = https://www.gnu.org/software/coreutils
ARCHIVE = coreutils-9.10.tar.xz
LINK = https://ftp.gnu.org/gnu/coreutils/coreutils-9.10.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = coreutils-9.10
AUTO_CONF = (cd ${BUILDDIR} && fu_cv_sys_stat_statvfs=n ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls \
	--enable-no-install-program=hostname,su,kill,uptime \
	--enable-single-binary=symlinks \
	--without-libgmp \
	--without-selinux \
	--enable-single-binary-exceptions=env,fmt,sha512sum \
	--disable-libcap \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
override PACKAGE = ${PKGNAME}-${CATEGORIES}

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	rm -rf package/usr/lib/charset.alias
	rmdir -p package/usr/lib 2>/dev/null || true
	mkdir -p package/bin
	( cd package/bin && for i in ../usr/bin/*; do ln -sf $$i . ; done )

post-install:

include /usr/share/mk/lfs.port.mk
