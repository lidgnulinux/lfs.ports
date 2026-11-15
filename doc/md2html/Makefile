COMMENT = Markdown to single HTML
VERSION = 2.0.1
REVISION = 0
CATEGORIES = doc
PKGNAME = md2html
HOMEPAGE = https://github.com/nocd5/md2html
ARCHIVE = md2html_linux_amd64.zip
LINK = https://github.com/nocd5/md2html/releases/download/v2.0.1/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = $(CURDIR) 

prepare:
	bsdunzip ${ARCHIVE}

custom-build:
	install -Dm755 md2html -t pkg/usr/bin/ 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
