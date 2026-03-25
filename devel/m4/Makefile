COMMENT = GNU macro processor
VERSION = 1.4.21
REVISION = 0
CATEGORIES = devel
PKGNAME = m4
HOMEPAGE = https://www.gnu.org/software/m4
ARCHIVE = m4-1.4.21.tar.gz
LINK = https://ftpmirror.gnu.org/m4/m4-1.4.21.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = m4-1.4.21
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--build=x86_64-pc-linux-musl)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/format-security.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
