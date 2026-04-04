COMMENT = Command-line tools and library for transforming PDF files
VERSION = 12.3.2
REVISION = 0
CATEGORIES = doc
PKGNAME = qpdf
HOMEPAGE = https://github.com/qpdf/qpdf
ARCHIVE = qpdf-12.3.2.tar.gz
LINK = https://github.com/qpdf/qpdf/releases/download/v12.3.2/qpdf-12.3.2.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = qpdf-12.3.2
BUILD_OPTION = -DCMAKE_BUILD_TYPE=MinSizeRel \
	-DBUILD_DOC_PDF=OFF \
	-DBUILD_DOC_HTML=OFF \
	-DINSTALL_EXAMPLES=OFF

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
