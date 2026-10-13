COMMENT = SELinux library and simple utilities
VERSION = 3.11
REVISION = 0
CATEGORIES = libs
PKGNAME = libselinux
HOMEPAGE = https://github.com/SELinuxProject/selinux/wiki
ARCHIVE = libselinux-${VERSION}.tar.gz
LINK = https://github.com/SELinuxProject/selinux/releases/download/${VERSION}/libselinux-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libselinux-${VERSION}
MAKEOPT = SHLIBDIR="/usr/lib" FTS_LDLIBS="-lfts"

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/lfs64.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
