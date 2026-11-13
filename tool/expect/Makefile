COMMENT = A tool for automating interactive applications
VERSION = 5.45.4
REVISION = 5
CATEGORIES = tool
PKGNAME = expect
HOMEPAGE = https://core.tcl-lang.org/expect/index
ARCHIVE = expect5.45.4.tar.gz
LINK = https://downloads.sourceforge.net/project/expect/Expect/5.45.4/expect5.45.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = expect5.45.4
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-tcl=/usr/lib \
	--enable-shared \
	--disable-rpath \
	--mandir=/usr/share/man \
	--with-tclinclude=/usr/include)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -i ${BUILDDIR}

post_build:
	ln -svf expect5.45.4/libexpect5.45.4.so package/usr/lib

post-install:

include /usr/share/mk/lfs.port.mk
