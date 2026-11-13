COMMENT = Linux Audio Developer's Simple Plug-in API, examples and tools
VERSION = 1.17
REVISION = 0
CATEGORIES = audio
PKGNAME = ladspa
HOMEPAGE = https://www.ladspa.org
ARCHIVE = ladspa_sdk_1.17.tgz
LINK = https://ladspa.org/download/ladspa_sdk_1.17.tgz
SRCCD = archive
BUILD = custom
BUILDDIR = ladspa_sdk_1.17/src
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/fix-memleak-in-plugin-scanning.patch

custom-build:
	make -C ${BUILDDIR} targets
	make -C ${BUILDDIR} INSTALL_PLUGINS_DIR="$(CURDIR)/pkg/usr/lib/ladspa/" \
		INSTALL_INCLUDE_DIR="$(CURDIR)/pkg/usr/include/" \
		INSTALL_BINARY_DIR="$(CURDIR)/pkg/usr/bin/" install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
