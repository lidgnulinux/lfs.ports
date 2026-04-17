COMMENT = General-purpose programming language designed for robustness, optimality, and maintainability
VERSION = 0.15.2
REVISION = 0
CATEGORIES = lang
PKGNAME = zig
HOMEPAGE = https://ziglang.org
ARCHIVE = zig-x86_64-linux-0.15.2.tar.xz
LINK = https://ziglang.org/download/0.15.2/zig-x86_64-linux-0.15.2.tar.xz
SRCCD = archive
BUILD = custom
BUILDDIR = zig-x86_64-linux-0.15.2
STRIP = no

prepare:

custom-build:
	mkdir -p pkg/usr/share/zig-${VERSION}
	cp -r zig-x86_64-linux-0.15.2/* pkg/usr/share/zig-${VERSION}

post_build:

post-install:
	@echo -e "\n\
		This is prebuilt binary of zig ${VERSION} version. \n\
		This would save our time rather than build zig from source. \n\
		It's tested for building riverwm, and its window manager. \n"

include /usr/share/mk/lfs.port.mk
