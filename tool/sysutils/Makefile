COMMENT = System Utilities Based on Sysfs
VERSION = 2.1.1
REVISION = 0
CATEGORIES = tool
PKGNAME = sysfsutils
HOMEPAGE = https://github.com/linux-ras/sysfsutils
ARCHIVE = v2.1.1.tar.gz
LINK = https://github.com/linux-ras/sysfsutils/archive/v2.1.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sysfsutils-2.1.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && ./autogen

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
