COMMENT = Terminal multiplexer.
VERSION = 3.7c
REVISION = 1
CATEGORIES = tool
PKGNAME = tmux
HOMEPAGE = https://tmux.github.io/
ARCHIVE = tmux-${VERSION}.tar.gz
LINK = https://github.com/tmux/tmux/releases/download/3.7c/tmux-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = tmux-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	)
MAKEOPT =
GRAFT = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
