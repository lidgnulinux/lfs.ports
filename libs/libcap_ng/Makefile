COMMENT = POSIX capabilities library
VERSION = 0.8.5
REVISION = 0
CATEGORIES = libs
PKGNAME = libcap_ng
HOMEPAGE = https://people.redhat.com/sgrubb/libcap-ng/index.html
ARCHIVE = libcap-ng-0.8.5.tar.gz
LINK = https://people.redhat.com/sgrubb/libcap-ng/libcap-ng-0.8.5.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libcap-ng-0.8.5
AUTO_CONF = (cd ${BUILDDIR} && ac_cv_prog_swig_found=no ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--without-python \
	--without-python3 \
	--enable-static \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/apply-disable.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
