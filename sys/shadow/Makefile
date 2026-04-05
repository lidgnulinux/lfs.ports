COMMENT = The shadow tool suite.
VERSION = 4.19.4
REVISION = 0
CATEGORIES = sys
PKGNAME = shadow
HOMEPAGE = https://pkg-shadow.alioth.debian.org
ARCHIVE = shadow-4.19.4.tar.xz
LINK = https://github.com/shadow-maint/shadow/releases/download/4.19.4/shadow-4.19.4.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = shadow-4.19.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-account-tools-setuid \
	--disable-nls \
	--enable-lastlog \
	--without-audit \
	--with-libpam \
	--without-selinux \
	--without-acl \
	--without-attr \
	--without-tcb \
	--with-yescrypt \
	--without-nscd \
	--without-libbsd \
	--without-group-name-max-length \
	--with-fcaps \
	--disable-logind \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	sed -i 's/groups$(EXEEXT) //' ${BUILDDIR}/src/Makefile.in
	find ${BUILDDIR}/man -type f -name Makefile.in \
		-exec sed -i 's/groups\.1 / /'   {} \;
	find ${BUILDDIR}/man -type f -name Makefile.in \
		-exec sed -i 's/getspnam\.3 / /' {} \;
	find ${BUILDDIR}/man -type f -name Makefile.in \
		-exec sed -i 's/passwd\.5 / /'   {} \;

post_build:
	mv package/etc/pam.d/login package/etc/pam.d/login.new	

post-install:

include /usr/share/mk/lfs.port.mk
