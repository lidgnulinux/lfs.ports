COMMENT = The GNU general-purpose parser generator
VERSION = 3.8.2
REVISION = 0
CATEGORIES = tool
PKGNAME = bison
HOMEPAGE = https://www.gnu.org/software/bison/bison.html
ARCHIVE = bison-3.8.2.tar.xz
LINK = https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = bison-3.8.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/gcc15-glibcxx-assertions.patch

post_build:
	rm -rf package/usr/lib/charset.alias
	rmdir -p package/usr/lib 2>/dev/null || true

post-install:

include /usr/share/mk/lfs.port.mk
