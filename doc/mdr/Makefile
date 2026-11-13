COMMENT = MarkDown Renderer for the terminal
VERSION = 0.2.5
REVISION = 0
CATEGORIES = doc
PKGNAME = mdr
HOMEPAGE = https://github.com/MichaelMure/mdr
ARCHIVE = mdr_linux_amd64
LINK = https://github.com/MichaelMure/mdr/releases/download/v0.2.5/mdr_linux_amd64
SRCCD = archive
BUILD = custom

prepare:
	mkdir -p pkg/usr/bin

custom-build:
	mv mdr_linux_amd64 mdr 

ifeq ($(MUSL),YES)
	@patchelf --set-interpreter /lib/ld-musl-x86_64.so.1 mdr
	@patchelf --remove-needed ld-linux-x86_64.so.2 mdr
else
	@echo "It's original mdr with glibc as default libc."
endif

	@cp -r mdr pkg/usr/bin

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
