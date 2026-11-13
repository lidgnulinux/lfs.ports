COMMENT = zathura - highly customizable and functional document viewer
VERSION = 2026.10.23
REVISION = 0
CATEGORIES = doc
PKGNAME = zathura
HOMEPAGE = https://pwmt.org/projects/zathura/
ARCHIVE = zathura-${VERSION}.tar.xz
LINK = https://pwmt.org/projects/zathura/download/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = zathura-${VERSION}
BUILD_OPTION = -Dseccomp=enabled \
	-Dlandlock=enabled \
	-Dmanpages=disabled \
	-Dshell-completions=disabled \
	-Dsynctex=disabled \
	-Dconvert-icon=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
