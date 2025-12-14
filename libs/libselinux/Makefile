COMMENT = SELinux library and simple utilities
VERSION = 3.8.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libselinux
HOMEPAGE = https://github.com/SELinuxProject/selinux/wiki
ARCHIVE = libselinux-3.8.1.tar.gz
LINK = https://github.com/SELinuxProject/selinux/releases/download/3.8.1/libselinux-3.8.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libselinux-3.8.1
MAKEOPT = SHLIBDIR="/usr/lib" FTS_LDLIBS="-lfts"

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/lfs64.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
