COMMENT = A CLI utility which, as the name implies, generates PDF from Markdown.
VERSION = 2.2.18
REVISION = 0
CATEGORIES = doc
PKGNAME = md2pdf
HOMEPAGE = https://github.com/solworktech/mdtopdf
ARCHIVE = mdtopdf_Linux_x86_64.tar.gz
LINK = https://github.com/solworktech/mdtopdf/releases/download/v2.2.18/mdtopdf_Linux_x86_64.tar.gz
SRCCD = archive
BUILD = custom

prepare:

custom-build:
	mkdir -p pkg/usr/bin
	mkdir -p pkg/usr/share/docs/md2pdf
	install -Dm755 md2pdf -t pkg/usr/bin/ 
	install -Dm644 {LICENSE,README.md} -t pkg/usr/share/docs/md2pdf/ 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
