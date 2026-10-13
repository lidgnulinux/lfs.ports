COMMENT = A general purpose messaging, notification and menuing program for X11
VERSION = 0.9.5
_VERSION = 488ab66019f475e35e067646621827c18a879ba1
REVISION = 0
CATEGORIES = xapps
PKGNAME = dzen
HOMEPAGE = https://github.com/robm/dzen
LINK = https://github.com/robm/dzen/archive/${_VERSION}.tar.gz
ARCHIVE = ${_VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dzen-${_VERSION}
MKINST = yes
BUILD_OPTION =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/0001-Enable-Xinerama-and-XPM.patch

post_build:
	make -j4 -C ${BUILDDIR}/gadgets  

include /usr/share/mk/lfs.port.mk
