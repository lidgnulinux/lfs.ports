COMMENT = interface to the Linux Kernel's syscall filtering mechanism
VERSION = 2.6.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libseccomp
HOMEPAGE = https://github.com/seccomp/libseccomp
ARCHIVE = libseccomp-${VERSION}.tar.gz
LINK = https://github.com/seccomp/libseccomp/releases/download/v${VERSION}/libseccomp-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libseccomp-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
