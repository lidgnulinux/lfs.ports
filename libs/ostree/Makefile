COMMENT = Operating system and container binary deployment and upgrades
VERSION = 2026.4
REVISION = 0
CATEGORIES = libs
PKGNAME = ostree
HOMEPAGE = https://github.com/ostreedev/ostree
ARCHIVE = libostree-${VERSION}.tar.xz
LINK = https://github.com/ostreedev/ostree/releases/download/v${VERSION}/libostree-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = libostree-${VERSION}
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
	--with-soup3 \
	--without-openssl \
	--with-curl)
MAKEOPT =

prepare:

trivial-httpd:
	make -C ${BUILDDIR} PREFIX=/usr ostree-trivial-httpd 

post_build:
	install -Dm755 ${BUILDDIR}/ostree-trivial-httpd \
		-t package/usr/lib/libostree/

post-install:

include /usr/share/mk/lfs.port.mk
