COMMENT = LiSt Open Files
VERSION = 4.99.7
REVISION = 0
CATEGORIES = tool
PKGNAME = lsof
HOMEPAGE = https://github.com/lsof-org/lsof
ARCHIVE = lsof-${VERSION}.tar.gz
LINK = https://github.com/lsof-org/lsof/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = lsof-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./Configure -n linux)
MAKEOPT =
MKINST = no

prepare:

post_build:
	install -Dm0755 ${BUILDDIR}/lsof -t package/usr/bin/
	install -Dm0644 ${BUILDDIR}/Lsof.8 package/usr/share/man/man8/lsof.8

post-install:

include /usr/share/mk/lfs.port.mk
