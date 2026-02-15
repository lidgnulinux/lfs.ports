COMMENT = Fully feature complete YAML parser and emitter
VERSION = 0.9.4
REVISION = 1
CATEGORIES = libs
PKGNAME = libfyaml
HOMEPAGE = https://github.com/pantoniou/libfyaml
ARCHIVE = libfyaml-0.9.4.tar.gz
LINK = https://github.com/pantoniou/libfyaml/releases/download/v0.9.4/libfyaml-0.9.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libfyaml-0.9.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-libclang=disable \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
