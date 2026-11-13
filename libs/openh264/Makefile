COMMENT = OpenH264 is a codec library which supports H.264 encoding and decoding
VERSION = 2.6.0
REVISION = 0
CATEGORIES = libs
PKGNAME = openh264
HOMEPAGE = https://github.com/cisco/openh264
SRCCD = archive
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/cisco/openh264/archive/${ARCHIVE}
BUILD = make
BUILDDIR = openh264-${VERSION}
MAKEOPT = ARCH=x86_64 BUILDTYPE=Release USE_ASM=Yes ENABLEPIC=Yes HAVE_AVX2=No

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
