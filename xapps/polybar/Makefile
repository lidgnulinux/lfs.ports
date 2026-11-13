COMMENT = A fast and easy-to-use status bar
VERSION = 3.7.2
REVISION = 0
CATEGORIES = xapps
PKGNAME = polybar
HOMEPAGE = https://github.com/polybar/polybar
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/polybar/polybar/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR =polybar-${VERSION}
BUILD_OPTION = -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DBUILD_DOC_HTML=OFF \
	-DBUILD_DOC=OFF \
	-DBUILD_TESTS=OFF \
	-DPYTHON_EXECUTABLE=/usr/bin/python3

_xppver="044e69d05db7f89339bda1ccd1efe0263b01c8f6"
_i3ipcppver="86ddf7102c6903ae0cc543071e2d375403fc0727"

get: download
	wget -c https://github.com/polybar/xpp/archive/${_xppver}.tar.gz
	wget -c https://github.com/polybar/i3ipcpp/archive/${_i3ipcppver}.tar.gz 

prepare:
	rm -rf ${BUILDDIR}/lib/{xpp,i3ipcpp}

	tar -xf ${_xppver}.tar.gz -C ${BUILDDIR}
	tar -xf ${_i3ipcppver}.tar.gz -C ${BUILDDIR}
	mv ${BUILDDIR}/xpp-${_xppver} ${BUILDDIR}/lib/xpp
	mv ${BUILDDIR}/i3ipcpp-${_i3ipcppver} ${BUILDDIR}/lib/i3ipcpp

	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/fix-version.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/fix-gcc-15-uint-errors.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/fix-modules-cmake-version.patch

post_build:

post-install:
	@echo -e "\n* polybar-doc package includes a sample config file as /usr/share/doc/polybar/config \n\
	* In order to use it as a template, copy it as ~/.config/polybar/config \n\
	* You may want to install some glyph fonts like font-siji in order to get symbols rendered correctly.\n"

include /usr/share/mk/lfs.port.mk
