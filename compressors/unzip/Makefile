COMMENT = Extract PKZIP-compatible .zip files
VERSION = 6.0
REVISION = 0
CATEGORIES = compressors
PKGNAME = unzip
HOMEPAGE = http://www.info-zip.org/UnZip.html
ARCHIVE = unzip60.tgz
LINK = https://dev.alpinelinux.org/archive/unzip/unzip60.tgz
SRCCD = archive
BUILD = make
BUILDDIR = unzip60
DEF = -DACORN_FTYPE_NFS -DWILD_STOP_AT_DIR -DLARGE_FILE_SUPPORT \
	-DUNICODE_SUPPORT -DUNICODE_WCHAR -DUTF8_MAYBE_NATIVE -DNO_LCHMOD \
	-DDATE_FORMAT=DF_YMD -DNOMEMCPY -DNO_WORKING_ISPRINT
MAKEOPT = -f unix/Makefile CF="-I. ${DEF}" prefix=/usr unzips

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
