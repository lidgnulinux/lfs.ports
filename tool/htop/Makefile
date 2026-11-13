COMMENT = Interactive process viewer
VERSION = 3.5.3
REVISION = 0
CATEGORIES = tool
PKGNAME = htop
HOMEPAGE = https://htop.dev/
SRCCD = archive
ARCHIVE = htop-${VERSION}.tar.xz
LINK = https://github.com/htop-dev/htop/releases/download/${VERSION}/${ARCHIVE}
BUILD = make
BUILDDIR = htop-${VERSION} 
AUTO_CONF = (cd ${BUILDDIR}; ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--localstatedir=/var \
	--enable-cgroup \
	--enable-taskstats)
MAKEOPT = 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
