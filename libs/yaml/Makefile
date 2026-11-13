COMMENT = YAML 1.1 parser and emitter written in C
VERSION = 0.2.5
REVISION = 0
CATEGORIES = libs
PKGNAME = yaml
HOMEPAGE = https://pyyaml.org/wiki/LibYAML
ARCHIVE = yaml-0.2.5.tar.gz
LINK = http://pyyaml.org/download/libyaml/yaml-0.2.5.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = yaml-0.2.5
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
