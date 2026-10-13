COMMENT = interface to the Linux Kernel's syscall filtering mechanism
VERSION = 2.6.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libseccomp
HOMEPAGE = https://github.com/seccomp/libseccomp
ARCHIVE = libseccomp-2.6.0.tar.gz
LINK = https://github.com/seccomp/libseccomp/releases/download/v2.6.0/libseccomp-2.6.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libseccomp-2.6.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-python \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
