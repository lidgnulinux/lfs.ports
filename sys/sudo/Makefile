COMMENT = A tool to execute a command as another user.
VERSION = 1.9.17p2
REVISION = 0
CATEGORIES = sys
PKGNAME = sudo
HOMEPAGE = https://www.sudo.ws/sudo.html
ARCHIVE = sudo-1.9.17p2.tar.gz
LINK = https://www.sudo.ws/dist/sudo-1.9.17p2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sudo-1.9.17p2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	ac_cv_lib_md_SHA224Update=no \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--disable-gcrypt \
	--disable-root-sudo \
	--with-logfac=auth \
	--with-ignore-dot \
	--with-secure-path \
	--with-env-editor \
	--with-man \
	--without-pam \
	--disable-openssl \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	mv $(PWD)/package/etc/sudoers $(PWD)/package/etc/sudoers.new
	mv $(PWD)/package/etc/sudoers.dist $(PWD)/package/etc/sudoers.dist.new

post-install:

include /usr/share/mk/lfs.port.mk
