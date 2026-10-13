.ONESHELL:
SHELL := /bin/sh

COMMENT = Linux networking base tools
VERSION = 2.10
REVISION = 0
CATEGORIES = net
PKGNAME = nettools
HOMEPAGE = https://sourceforge.net/projects/net-tools/
ARCHIVE = net-tools-2.10.tar.xz
LINK = https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = net-tools-2.10
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

	cat > ${BUILDDIR}/config.make <<EOF
	# I18N=0
	HAVE_AFUNIX=1
	HAVE_AFINET=1
	HAVE_AFINET6=1
	# HAVE_AFIPX=0
	# HAVE_AFATALK=0
	# HAVE_AFAX25=0
	HAVE_AFNETROM=1
	# HAVE_AFROSE=0
	# HAVE_AFX25=0
	# HAVE_AFECONET=0
	# HAVE_AFDECnet=0
	# HAVE_AFASH=0
	# HAVE_AFBLUETOOTH=0
	HAVE_HWETHER=1
	# HAVE_HWARC=0
	HAVE_HWSLIP=1
	HAVE_HWPPP=1
	HAVE_HWTUNNEL=1
	# HAVE_HWSTRIP=0
	# HAVE_HWTR=0
	# HAVE_HWAX25=0
	# HAVE_HWROSE=0
	HAVE_HWNETROM=1
	# HAVE_HWX25=0
	# HAVE_HWFR=0
	# HAVE_HWSIT=0
	# HAVE_HWFDDI=0
	# HAVE_HWHIPPI=0
	# HAVE_HWASH=0
	# HAVE_HWHDLCLAPB=0
	# HAVE_HWIRDA=0
	# HAVE_HWEC=0
	# HAVE_HWEUI64=0
	# HAVE_HWIB=0
	HAVE_FW_MASQUERADE=1
	HAVE_ARP_TOOLS=1
	HAVE_HOSTNAME_TOOLS=1
	HAVE_HOSTNAME_SYMLINKS=1
	HAVE_IP_TOOLS=1
	HAVE_MII=0
	HAVE_PLIP_TOOLS=1
	HAVE_SERIAL_TOOLS=1
	EOF

	sed -n -e 's/^\(HAVE.*\)=\(.*\)/#define \1 \2/p' \
		${BUILDDIR}/config.make > ${BUILDDIR}/config.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
