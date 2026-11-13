COMMENT = ALSA topology configuration files
VERSION = 1.2.5.1
REVISION = 0
CATEGORIES = audio
PKGNAME = alsa_topology_conf
HOMEPAGE = https://alsa-project.org/
SRCCD = archive
ARCHIVE = alsa-topology-conf-1.2.5.1.tar.bz2
LINK = https://www.alsa-project.org/files/pub/lib/${ARCHIVE}
BUILD = custom
BUILDDIR = alsa-topology-conf-${VERSION}

prepare:
	mkdir -p pkg/usr/share/alsa/topology/

custom-build:
	cp -r ${BUILDDIR}/topology/* pkg/usr/share/alsa/topology/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
