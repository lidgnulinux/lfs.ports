COMMENT = Like neofetch, but much faster because written mostly in C (bin version)
VERSION = 2.70.0
REVISION = 0
CATEGORIES = misc
PKGNAME = fastfetch
HOMEPAGE = https://github.com/fastfetch-cli/fastfetch
ARCHIVE = fastfetch-linux-amd64.tar.gz
LINK = ${HOMEPAGE}/releases/download/2.70.0/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = fastfetch-linux-amd64
GRAFT = no

prepare:

custom-build:
	mkdir pkg
	cp -r ${BUILDDIR}/* pkg/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
