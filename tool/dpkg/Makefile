COMMENT = The Debian Package Manager
VERSION = 1.23.7
REVISION = 0
CATEGORIES = tool
PKGNAME = dpkg
HOMEPAGE = https://wiki.debian.org/Teams/Dpkg
ARCHIVE = dpkg-1.23.7.tar.bz2
LINK = https://salsa.debian.org/dpkg-team/dpkg/-/archive/1.23.7/dpkg-1.23.7.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = dpkg-1.23.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--with-libz \
	--with-libbz2 \
	--disable-dselect \
	--disable-start-stop-daemon \
	--disable-nls \
	--disable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
export CFLAGS=-lobstack

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/musl-realpath.patch
	echo "${VERSION}" > ${BUILDDIR}/.dist-version
	autoreconf -vif ${BUILDDIR}

post_build:
	touch package/var/lib/dpkg/status
	touch package/var/lib/dpkg/available

post-install:

include /usr/share/mk/lfs.port.mk
