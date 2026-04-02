COMMENT = Unprivileged sandboxing tool
VERSION = 0.11.1
REVISION = 0
CATEGORIES = tool
PKGNAME = bubblewrap
HOMEPAGE = https://github.com/containers/bubblewrap
LINK = https://github.com/containers/bubblewrap/archive/v${VERSION}.tar.gz
ARCHIVE = v${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = bubblewrap-${VERSION}
BUILD_OPTION = "-Drequire_userns=true"

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
