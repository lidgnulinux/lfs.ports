COMMENT = URL retrival utility and library
VERSION = 8.17.0
REVISION = 1
CATEGORIES = net
PKGNAME = curl
HOMEPAGE = https://curl.se/
LINK = https://curl.se/download/curl-${VERSION}.tar.xz
ARCHIVE = curl-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = curl-${VERSION}
BUILD_OPTION =
POST_BUILD =
PREPARE = patch -p1 -d ${BUILDDIR} -i $(PWD)/reg-19408.patch; \
	patch -p1 -d ${BUILDDIR} -i $(PWD)/reg-19383.patch 
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes \
	--enable-ipv6 \
	--enable-pthreads \
	--enable-threaded-resolver \
	--with-ca-path=/etc/ssl/certs \
	--without-libssh2 \
	--with-openssl \
	--with-libidn2)

include /usr/share/mk/lfs.port.mk
