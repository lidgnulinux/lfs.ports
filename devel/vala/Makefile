COMMENT = Compiler for the GObject type system
VERSION = 0.56.19
REVISION = 0
CATEGORIES = devel
PKGNAME = vala
HOMEPAGE = https://vala.dev
ARCHIVE = vala-0.56.19.tar.xz
LINK = https://download.gnome.org/sources/vala/0.56/vala-0.56.19.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = vala-0.56.19
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-valadoc \
	--build=x86_64-pc-linux-musl)

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/0001-posix-Define-_XOPEN_SOURCE-_GNU_SOURCE-for-signal-fu.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
