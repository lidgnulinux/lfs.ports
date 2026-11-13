COMMENT = Monospaced bitmap font designed for long work with computers (TTF version, mainly for Java applications)
VERSION = 4.49.3
REVISION = 1
CATEGORIES = misc
PKGNAME = terminus_ttf
HOMEPAGE = https://files.ax86.net/terminus-ttf
ARCHIVE = terminus-ttf-4.49.3.zip
LINK = https://files.ax86.net/terminus-ttf/files/4.49.3/terminus-ttf-4.49.3.zip
SRCCD = archive
BUILD = custom
BUILDDIR = terminus-ttf-4.49.3
STRIP = no

prepare:
	unzip ${ARCHIVE} 

custom-build:
	cd ${BUILDDIR}; \
		for i in *.ttf; do install -Dm 644 $$i $(CURDIR)/pkg/usr/share/fonts/TTF/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
