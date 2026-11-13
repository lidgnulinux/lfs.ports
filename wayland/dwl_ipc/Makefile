COMMENT = dwm for Wayland with ipc patch and \
	gaps + foreign-toplevel + menu + always center (optional) 
VERSION = v0.8.c9b11a49c
REVISION = 5
CATEGORIES = wayland
PKGNAME = dwl_ipc
HOMEPAGE = https://codeberg.org/dwl/dwl
ARCHIVE = git
LINK = https://codeberg.org/dwl/dwl
SRCCD = git
BUILD = make
BUILDDIR = dwl
EDITOR = vim

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/ipc-commit.9b11a49c.patch
	cp -r protocols/dwl-ipc-unstable-v2.xml ${BUILDDIR}/protocols/
ifeq ($(GAPS),YES)
	@echo "applying gaps patch."
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/optional-gaps-commit.9b11a49c.patch
else
	@echo "skipping applying gaps patch."
endif

ifeq ($(FOREIGN),YES)
	@echo "applying foreign-toplevel patch."
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/optional-foreign_toplevel-commit.9b11a49c.patch
	cp -r protocols/wlr-foreign-toplevel-management-unstable-v1.xml ${BUILDDIR}/protocols/
else
	@echo "skipping applying foreign-toplevel patch."
endif

ifeq ($(MENU),YES)
	@echo "applying menu patch."
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/optional-menu-commit.9b11a49c.patch
else
	@echo "skipping applying menu patch."
endif

ifeq ($(CENTER),YES)
	@echo "applying always-center patch."
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/optional-always_center-commit.9b11a49c.patch
else
	@echo "skipping applying always_center patch."
endif

config:
	${EDITOR} ${BUILDDIR}/config.def.h

post_build:
	mv package/usr/bin/dwl package/usr/bin/dwl_ipc
	mv package/usr/share/man/man1/dwl.1 package/usr/share/man/man1/dwl_ipc.1
	rm package/usr/share/wayland-sessions/dwl.desktop
	cp -r dwl_ipc.desktop package/usr/share/wayland-sessions/
	mkdir -p package/usr/share/doc/dwl_ipc
	cp -r ${BUILDDIR}/config.def.h package/usr/share/doc/dwl_ipc

post-install:
	@echo ""
	@echo -e "\e[1mRemember to check /usr/share/doc/dwl_ipc/config.def.h to see available keybinds.\e[0m"
	@echo ""

include /usr/share/mk/lfs.port.mk
