COMMENT = A voice compression format (DSP)
VERSION = 1.2.1
REVISION = 0
CATEGORIES = audio
PKGNAME = speexdsp
HOMEPAGE = https://www.speex.org/
ARCHIVE = speexdsp-SpeexDSP-1.2.1.tar.bz2
LINK = https://gitlab.xiph.org/xiph/speexdsp/-/archive/SpeexDSP-1.2.1/speexdsp-SpeexDSP-1.2.1.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = speexdsp-SpeexDSP-1.2.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	autoreconf -vif ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
