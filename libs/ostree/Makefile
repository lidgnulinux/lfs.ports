COMMENT = Operating system and container binary deployment and upgrades
VERSION = 2025.7
REVISION = 0
CATEGORIES = libs
PKGNAME = ostree
HOMEPAGE = https://github.com/ostreedev/ostree
ARCHIVE = libostree-2025.7.tar.xz
LINK = https://github.com/ostreedev/ostree/releases/download/v2025.7/libostree-2025.7.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = libostree-2025.7
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--sbindir=/usr/bin \
	--libexecdir=/usr/libexec \
	--disable-gtk-doc \
	--disable-static \
	--disable-glibtest \
	--without-soup3 \
	--without-openssl \
	--with-curl \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
