COMMENT = Library and CLI tools for XZ and LZMA compressed files
VERSION = 5.8.1
REVISION = 0
CATEGORIES = tool
PKGNAME = xz
HOMEPAGE = https://tukaani.org/xz/
ARCHIVE = xz-5.8.1.tar.xz
LINK = https://github.com//tukaani-project/xz/releases/download/v5.8.1/xz-5.8.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xz-5.8.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-rpath \
	--disable-werror \
	--disable-doc && \
	sed -i \
		-e 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' \
		-e 's|^runpath_var=LD_RUN_PATH|runpath_var=DIE_RPATH_DIE|g' libtool)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
