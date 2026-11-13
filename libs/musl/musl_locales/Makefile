COMMENT = Locales support for musl
VERSION = 0.1.0
REVISION = 0
CATEGORIES = sys
PKGNAME = musl_locales
HOMEPAGE = https://git.adelielinux.org/adelie/musl-locales/-/wikis/home
ARCHIVE = musl-locales-0.1.0.tar.bz2
LINK = https://git.adelielinux.org/adelie/musl-locales/-/archive/0.1.0/musl-locales-0.1.0.tar.bz2
SRCCD = archive
BUILD = cmake
BUILDDIR = musl-locales-0.1.0
BUILD_OPTION = -DCMAKE_BUILD_TYPE=None -DCMAKE_POLICY_VERSION_MINIMUM=3.5

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
