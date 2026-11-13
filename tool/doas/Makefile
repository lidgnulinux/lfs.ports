COMMENT = OpenBSD's temporary privilege escalation tool
VERSION = 6.8.2
REVISION = 0
CATEGORIES = tool
PKGNAME = doas
HOMEPAGE = https://github.com/Duncaen/OpenDoas
ARCHIVE = v${VERSION}.tar.gz
LINK = ${HOMEPAGE}/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = OpenDoas-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr --with-timestamp)
GRAFT = no
	
prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
