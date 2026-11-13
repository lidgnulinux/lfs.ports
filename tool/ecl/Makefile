COMMENT = Embeddable Common Lisp
VERSION = 24.5.10
REVISION = 0
CATEGORIES = tool
PKGNAME = ecl
HOMEPAGE = https://ecl.common-lisp.dev/
ARCHIVE = ecl-24.5.10.tgz
LINK = https://common-lisp.net/project/ecl/static/files/release/ecl-24.5.10.tgz
SRCCD = archive
BUILD = make
BUILDDIR = ecl-24.5.10
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS="-std=gnu17" ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--infodir=/usr/share/info \
	--mandir=/usr/share/man \
	--localstatedir=/var/state/ecl \
	--enable-boehm=system \
	--enable-gmp=system \
	--enable-libatomic=system)
MAKEOPT =

prepare:

post_build:
	mv package/usr/share/info/dir package/usr/share/info/ecl.dir

post-install:

include /usr/share/mk/lfs.port.mk
