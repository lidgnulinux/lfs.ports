COMMENT = Secret Rabbit Code - aka Sample Rate Converter for audio
VERSION = 0.2.2
REVISION = 0
CATEGORIES = audio
PKGNAME = libsamplerate
HOMEPAGE = http://www.mega-nerd.com/SRC/index.html
SRCCD = archive
ARCHIVE = libsamplerate-${VERSION}.tar.xz
LINK =https://github.com/libsndfile/libsamplerate/releases/download/${VERSION}/${ARCHIVE}
BUILD = make
BUILDDIR = libsamplerate-${VERSION}
AUTO_CONF = (cd ${BUILDDIR}; ./configure --prefix=/usr/ --enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
