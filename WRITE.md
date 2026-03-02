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

	There are 4 categories, `make`, `cmake`, `meson` and `custom`. You can easily know which build type by looking at the source code.
	- If it has a `Makefile` in it, it means it's a `make` type.
	- If it has a `meson.build` in it, it means it's a `meson` type.
	- If it has a `CmakeLists.txt` in it, it means it's a `cmake` type.
	- if it have neither `Makefile`, `meson.build`, or `CmakeLists.txt` in it, you can use `custom` type. You need to specify build steps tho.

1. Add build option(s).

	Some package may need build option (e.g to enable specific option(s) or feature(s)). You can addd it on `BUILD_OPTION` variable (for `meson` and `cmake` build type) or `AUTO_CONF` and `MAKEOPT` (for `make` build type).

1. Add `preparation` target if needed.

	Some builds need to add `preparation` target. It can be editing configuration, create some directories, patching, etc. Define it under `prepare:` !

1. Add `post build` target if needed.

	Sometimes after the build is finished, we still need to change some stuffs (e.g copy libraries to somewhere else, delete unneeded stuffs). We can do it on `post build` target (we call it `post_build:`).

1. Add `post install` target if needed.

	After package is created and installed, sometimes we need to perform action which specific for the package (e.g the common one is printing some notes after package installation). We can add it under `post-install:` target. 
