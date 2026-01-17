COMMENT = A program to control backlights (and other hardware lights)
VERSION = 1.2.2
_REV = 2a54078cbe3814105ee4f565f451b1b5947fbde0
REVISION = 0
CATEGORIES = xapps
PKGNAME = light
HOMEPAGE = https://gitlab.com/dpeukert/light
ARCHIVE = light-${_REV}.tar.gz
LINK = https://gitlab.com/dpeukert/light/-/archive/${_REV}/light-${_REV}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = light-${_REV}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--with-udev \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch --forward -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	cd ${BUILDDIR} && ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
