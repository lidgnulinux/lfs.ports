COMMENT = zathura - highly customizable and functional document viewer
VERSION = 2026.03.27
REVISION = 0
CATEGORIES = doc
PKGNAME = zathura
HOMEPAGE = https://pwmt.org/projects/zathura/
ARCHIVE = zathura-2026.03.27.tar.xz
LINK = https://pwmt.org/projects/zathura/download/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = zathura-2026.03.27
BUILD_OPTION = -Dseccomp=enabled \
	-Dlandlock=enabled \
	-Dmanpages=disabled \
	-Dtests=disabled \
	-Dconvert-icon=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
