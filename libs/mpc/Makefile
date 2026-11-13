COMMENT = Multiprecision C library
VERSION = 1.3.1
REVISION = 0
CATEGORIES = libs
PKGNAME = mpc
HOMEPAGE = http://www.multiprecision.org/
ARCHIVE = mpc-1.3.1.tar.gz
LINK = https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = mpc-1.3.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:
	mv package/usr/share/info/dir package/usr/share/info/mpc.dir

post-install:

include /usr/share/mk/lfs.port.mk
