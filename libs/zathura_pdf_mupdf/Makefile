COMMENT = mupdf plugin to zathura
VERSION = 0.4.4
REVISION = 0
CATEGORIES = libs
PKGNAME = zathura_pdf_mupdf
HOMEPAGE = https://pwmt.org/projects/zathura-pdf-mupdf/
ARCHIVE = zathura-pdf-mupdf-0.4.4.tar.xz
LINK = https://pwmt.org/projects/zathura-pdf-mupdf/download/zathura-pdf-mupdf-0.4.4.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = zathura-pdf-mupdf-0.4.4
BUILD_OPTION =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
