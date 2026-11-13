COMMENT = The GNU Networking Utilities
VERSION = 2.7
REVISION = 0
CATEGORIES = net
PKGNAME = inetutils
HOMEPAGE = https://www.gnu.org/software/inetutils
ARCHIVE = inetutils-2.7.tar.gz
LINK = https://ftp.gnu.org/gnu/inetutils/inetutils-2.7.tar.gz 
SRCCD = archive
BUILD = make
BUILDDIR = inetutils-2.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--bindir=/usr/bin \
	--localstatedir=/var \
	--disable-logger \
	--disable-whois \
	--disable-rcp \
	--disable-rexec \
	--disable-rlogin \
	--disable-rsh \
	--disable-servers)
MAKEOPT =

prepare:
	sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' ${BUILDDIR}/telnet/telnet.c

post_build:
	mkdir -p package/usr/sbin
	mv -v package/usr/{,s}bin/ifconfig

post-install:

include /usr/share/mk/lfs.port.mk
