COMMENT = Tool to manipulate Intel® IA-32/X86-64 microcode bundles
VERSION = 2.3.1
REVISION = 0
CATEGORIES = tool
PKGNAME = iucode
HOMEPAGE = https://gitlab.com/iucode-tool/iucode-tool/wikis/home
ARCHIVE = iucode-tool_2.3.1.tar.xz
LINK = https://gitlab.com/iucode-tool/releases/raw/master/iucode-tool_2.3.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = iucode-tool-2.3.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
