# lfs.ports

## What's this ?

Ports package build collection for LFS / linux distro in general. It's a collection of recipe to build package. Using Makefile and bsd.port.mk-like (I call it as lfs.port.mk). If you're familiar with `ports` from openbsd & freebsd, you would easily recognize it. There are 8 build types, `make`, `cmake`, `meson`, `bmake`, `muon`, `cargo`, `zig` and `custom`.


## How to use it ?

You could easily use it, but before that, you should have these requirements :
- wget, to download source code. You could change it with your tool downloader.
- build tools, like compiler (I use gcc mainly), make, meson, cmake, bmake, muon and zig.
- tar, to create tar.gz package archive.
- [graft](https://peters.gormand.com.au/Home/tools/graft), to do grafting. 
- text editor.
- patch, to do patching (if needed)

After you have those requirements, let's build our package !

1. Copy `lfs.port.mk` & `strip.mk` to `/usr/share/mk` directory.
1. Pick a template package, for example `iceauth`. 
1. Run these commands :

	```
	$ make download
	$ make extract
	$ make prepare
	$ make build
	$ make package
	```

	Explanation :
	- **make download**, download source code.
	- **make extract**, extract source code.
	- **make prepare**, prepare build, like patching (if needed), edit the source code, etc.
	- **make build**, build package.
	- **make package**, create tar.gz package.

1. Once the package's created, we can install it using [mk](https://github.com/lidgnulinux/lfs.ports/blob/main/mk) package manager.

	```
	$ sudo /path/to/mk a P=1 PKG=iceauth-1.0.10-0@xapps.tar.gz
	```
	
	
note : For more info about `mk`, you could read its documentation [here](https://github.com/lidgnulinux/lfs.ports/blob/main/man/mk.1).


## Main repository & mirrors

Main repository : [Github](https://github.com/lidgnulinux/lfs.ports).

Mirrors :
- [GitLab](https://gitlab.com/lidgnulinux/lfs-ports).
- [Github](https://github.com/ahmadraniri/lfs.ports).
- [Github alternative](https://github.com/ahmadraniri1994/lfs.ports). 
- [darcs](https://hub.darcs.net/ahmadraniri1994/lports).
- [darcs alternative](https://hub.darcs.net/lidgnulinux/lports).
- [codeberg.org](https://codeberg.org/lidgnulinux/lfs.ports).
