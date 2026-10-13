COMMENT = Google Roboto (Classic) font
VERSION = 3.005
REVISION = 0
CATEGORIES = font
PKGNAME = roboto
HOMEPAGE = https://github.com/googlefonts/roboto-classic
ARCHIVE = Roboto_v3.005.zip
LINK = https://github.com/googlefonts/roboto-classic/releases/download/v3.005/Roboto_v3.005.zip
SRCCD = archive
BUILD = custom
BUILDDIR = roboto

prepare:
	@echo "extracting the archive..."
	@bsdunzip ${ARCHIVE} -d roboto 
	@mkdir -p pkg/usr/share/fonts/roboto

custom-build:
	install -Dm644 ${BUILDDIR}/unhinted/static/Roboto*.ttf -t pkg/usr/share/fonts/roboto/
	install -Dm644 $(CURDIR)/45-roboto.conf -t pkg/etc/fonts/conf.avail/
	install -Dm644 $(CURDIR)/45-roboto.conf -t pkg/etc/fonts/conf.d/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
