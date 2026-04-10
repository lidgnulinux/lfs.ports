# Write a port build recipe.

## How to write a port ?

If you want / need to write your own port build recipe, you can follow this guide.

1. Gather package informations. 

	The package informations include :
	- package name (PKGNAME).
	- package description (COMMENT).
	- package version (VERSION).
	- package revision (REVISION).
	- package homepage (HOMEPAGE).
	- package source code type, it can be an archive or git repository.
	- package source code and its download link (ARCHIVE & LINK).
	- package build type (see next step).
	- build directory.

1. Determine which build type.

	There are 7 categories, `make`, `cmake`, `meson`, `bmake`, `muon`, `cargo` and `custom`. You can easily know which build type by looking at the source code.
	- If it has a `Makefile` in it, it means it's a `make` type or probably a `bmake` type.
	- If it has a `meson.build` in it, it means it's a `meson` type or a `muon` type (as alternative).
	- If it has a `CmakeLists.txt` in it, it means it's a `cmake` type.
	- If it has a `Cargo.toml` or `Cargo.lock` in it, it means it's a `cargo` type.
	- if it have neither `Makefile`, `meson.build`, `CmakeLists.txt`, `Cargo.toml` or `Cargo.lock` in it, you can use `custom` type. You need to specify build steps tho.

1. Add build option(s).

	Some package may need build option (e.g to enable specific option(s) or feature(s)). You can addd it on `BUILD_OPTION` variable (for `meson`, `cmake` and `cargo` build type) or `AUTO_CONF` and `MAKEOPT` (for `make` build type).

1. Add `preparation` target if needed.

	Some builds need to add `preparation` target. It can be editing configuration, create some directories, patching, etc. Define it under `prepare:` !

1. Add `post build` target if needed.

	Sometimes after the build is finished, we still need to change some stuffs (e.g copy libraries to somewhere else, delete unneeded stuffs). We can do it on `post build` target (we call it `post_build:`).

1. Add `post install` target if needed.

	After package is created and installed, sometimes we need to perform action which specific for the package (e.g the common one is printing some notes after package installation). We can add it under `post-install:` target. 

1. Write all gathered and needed stuffs to a Makefile.

	Once you gathered all informations and needed stuffs, you can write them to a Makefile. For example, `acl` package.

	```
	COMMENT = Access control list utilities
	VERSION = 2.3.2
	REVISION = 0
	CATEGORIES = tool
	PKGNAME = acl
	HOMEPAGE = https://savannah.nongnu.org/projects/acl
	ARCHIVE = acl-2.3.2.tar.gz
	LINK = https://download.savannah.nongnu.org/releases/acl/acl-2.3.2.tar.gz
	SRCCD = archive
	BUILD = make
	BUILDDIR = acl-2.3.2
	AUTO_CONF = (cd ${BUILDDIR} && ./configure \
		--prefix=/usr \
		--sysconfdir=/etc \
		--libdir=/usr/lib \
		--build=x86_64-pc-linux-musl)
	
	prepare:
	
	post_build:
	
	post-install:
	
	include /usr/share/mk/lfs.port.mk
	```

1. Striping.

	Striping executable and library are supported by using `STRIP` variable (STRIP=yes). We could add it to Makefile or just pass it as environment when running `make package`.

```
$ make STRIP=no package (it won't do striping).
$ make STRIP=yes package (it will do striping).
```
