COMMENT = Image annotation for Elementary OS
VERSION = 2.1.0.ccae024fa
REVISION = 0
CATEGORIES = tool
PKGNAME = annotator
HOMEPAGE = https://github.com/phase1geo/Annotator
SRCCD = git
BUILD = meson
BUILDDIR = $(CURDIR)
BUILD_OPTION =

prepare:

post_build:

post-install:
	glib-compile-schemas /usr/share/glib-2.0/schemas

include /usr/share/mk/lfs.port.mk
