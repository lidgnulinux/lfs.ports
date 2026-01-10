COMMENT = The GNU debugger.
VERSION = 16.3
REVISION = 0
CATEGORIES = devel
PKGNAME = gdb
HOMEPAGE = https://www.gnu.org/software/gdb
ARCHIVE = gdb-16.3.tar.xz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/d/gdb//gdb-16.3.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gdb-16.3/build
AUTO_CONF = (cd ${BUILDDIR} && ../configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-compressed-debug-sections=none \
	--with-python=/usr/bin/python3 \
	--with-system-zlib \
	--with-system-readline \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	mkdir -p ${BUILDDIR}
	for i in patch/*; do patch -p1 -d ${BUILDDIR}/.. -i $(PWD)/$$i; done

post_build:
	rm -f package/usr/lib/charset.alias
	rm -f package/usr/include/*.h \
		package/usr/lib/libbfd.a \
		package/usr/lib/libopcodes.a \
		package/usr/lib/libbfd.la \
		package/usr/lib/libopcodes.la \
		package/usr/share/info/dir \
		package/usr/share/info/bdf.info

post-install:

include /usr/share/mk/lfs.port.mk
