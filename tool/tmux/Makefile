COMMENT = Terminal multiplexer.
VERSION = 3.6a
REVISION = 0
CATEGORIES = tool
PKGNAME = tmux
HOMEPAGE = https://tmux.github.io/
ARCHIVE = tmux-3.6a.tar.gz
LINK = https://github.com/tmux/tmux/releases/download/3.6a/tmux-3.6a.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = tmux-3.6a
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
