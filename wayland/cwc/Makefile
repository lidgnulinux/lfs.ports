COMMENT = Extensible Wayland compositor with dynamic window management
VERSION = 0.4.0.dev.cd7493bae
_REV = d7493bae3745886a5acf370d2dca0aeebaa3e475
REVISION = 0
CATEGORIES = wayland
PKGNAME = cwc
HOMEPAGE = https://github.com/Cudiph/cwcwm
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/Cudiph/cwcwm/archive/${_REV}.tar.gz 
SRCCD = archive
BUILD = meson
BUILDDIR = cwcwm-${_REV}
BUILD_OPTION = --buildtype=release -Dtests=false --reconfigure

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
