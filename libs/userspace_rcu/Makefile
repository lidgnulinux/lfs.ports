COMMENT = Userspace RCU (read-copy-update) library
VERSION = 0.15.3
REVISION = 0
CATEGORIES = libs
PKGNAME = userspace_rcu
HOMEPAGE = https://liburcu.org/
ARCHIVE = userspace-rcu-0.15.3.tar.bz2
LINK = https://lttng.org/files/urcu/userspace-rcu-0.15.3.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = userspace-rcu-0.15.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
