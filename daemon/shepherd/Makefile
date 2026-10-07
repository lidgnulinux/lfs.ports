COMMENT = Service manager that looks after the herd.
VERSION = 1.0.9
REVISION = 1
CATEGORIES = daemon
PKGNAME = shepherd
HOMEPAGE = https://www.gnu.org/software/shepherd/
ARCHIVE = shepherd-${VERSION}.tar.gz
LINK = https://ftp.gnu.org/gnu/shepherd/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = shepherd-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--bindir=/usr/bin \
	--sbindir=/usr/bin \
	--with-gzip=/usr/bin/gzip \
	--with-zstd=/usr/bin/zstd \
	--infodir=/usr/share/info/${PKGNAME})
MAKEOPT =
STRIP = no

prepare:

post_build:
	mv package/usr/bin/reboot package/usr/bin/shepherd-reboot
	mv package/usr/bin/halt package/usr/bin/shepherd-halt

	gzip package/usr/share/man/man8/halt.8 package/usr/share/man/man8/halt.8.gz
	mv package/usr/share/man/man8/halt.8.gz package/usr/share/man/man8/shepherd-halt.8.gz
	mv package/usr/share/man/man8/reboot.8 package/usr/share/man/man8/shepherd-reboot.8
	cd package/usr/bin && ln -sf shepherd-halt shepherd-shutdown && rm shutdown

post-install:

include /usr/share/mk/lfs.port.mk
