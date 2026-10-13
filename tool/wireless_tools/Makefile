COMMENT = Open Source wireless tools
VERSION = 30_pre9
REVISION = 0
CATEGORIES = tool
PKGNAME = wireless_tools
HOMEPAGE = https://hewlettpackard.github.io/wireless-tools/Tools.html
ARCHIVE = wireless_tools.30.pre9.tar.gz
LINK = https://hewlettpackard.github.io/wireless-tools/wireless_tools.30.pre9.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = wireless_tools.30
MAKEOPT = INSTALL_DIR=$(CURDIR)/package/usr/sbin \
	INSTALL_LIB=$(CURDIR)/package/usr/lib \
	INSTALL_INC=$(CURDIR)/package/usr/include \
	INSTALL_MAN=$(CURDIR)/package/usr/share/man

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
