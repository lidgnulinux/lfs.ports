COMMENT = C library and CLI tools providing a simple interface to inotify
VERSION = 4.23.9.0
REVISION = 0
CATEGORIES = tool
PKGNAME = inotify_tools
HOMEPAGE = https://github.com/inotify-tools/inotify-tools
ARCHIVE = 4.23.9.0.tar.gz
LINK = https://github.com/inotify-tools/inotify-tools/archive/4.23.9.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = inotify-tools-4.23.9.0
AUTO_CONF = (cd ${BUILDDIR} && autoreconf -vif && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
