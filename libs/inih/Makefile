COMMENT = Simple .INI file parser for embedded systems
VERSION = 62
REVISION = 0
CATEGORIES = libs
PKGNAME = inih
HOMEPAGE = https://github.com/benhoyt/inih
ARCHIVE = r62.tar.gz
LINK = https://github.com/benhoyt/inih/archive/r62.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = inih-r62
BUILD_OPTION = -Ddistro_install=true \
	-Dwith_INIReader=true \
	-Dmulti-line_entries=true \
	-Dutf-8_bom=true \
	-Dinline_comments=true \
	-Duse_heap=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
