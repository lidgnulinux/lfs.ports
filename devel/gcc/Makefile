COMMENT = The GNU C Compiler Collection.
VERSION = 16.1.0
REVISION = 0
CATEGORIES = devel
PKGNAME = gcc
HOMEPAGE = https://www.gnu.org/software/gcc
ARCHIVE = gcc-16.1.0.tar.xz
LINK = https://ftpmirror.gnu.org/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gcc-16.1.0/build
AUTO_CONF = (cd ${BUILDDIR} && ../configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-multilib \
	--with-system-zlib \
	--enable-default-pie \
	--enable-default-ssp \
	--enable-host-pie \
	--disable-fixincludes \
	--enable-languages=c,c++,objc,obj-c++ \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	mkdir ${BUILDDIR}
	sed -i.orig '/m64=/s/lib64/lib/' ${BUILDDIR}/../gcc/config/i386/t-linux64

post_build:
	mkdir -pv package/usr/share/gdb/auto-load/usr/lib
	mv -v package/usr/lib/*gdb.py package/usr/share/gdb/auto-load/usr/lib

post-install:

include /usr/share/mk/lfs.port.mk
