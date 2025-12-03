COMMENT = package provides data for network services and protocols
VERSION = 20251120
REVISION = 0
CATEGORIES = misc
PKGNAME = iana_etc
HOMEPAGE = https://github.com/Mic92/iana-etc
ARCHIVE = iana-etc-${VERSION}.tar.gz
LINK = ${HOMEPAGE}/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = iana-etc-${VERSION}

prepare:
	mkdir -p pkg/etc

custom-build:
	cp ${BUILDDIR}/{services,protocols} pkg/etc

post_build:

include /usr/share/mk/lfs.port.mk
