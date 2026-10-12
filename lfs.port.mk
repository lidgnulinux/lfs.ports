PREFIX=/usr
LIBDIR=/usr/lib
SYSCONFDIR=/etc
LIBEXECDIR=/usr/libexec
BINDIR=/usr/bin
PACKAGE = ${PKGNAME}-${VERSION}-${REVISION}@${CATEGORIES}
DESTDIR = $(CURDIR)/package

download:
ifeq ($(SRCCD),archive)
	@echo "Mode: Archive"
	@if [ ! -f ${ARCHIVE} ]; then \
		echo "File not found. Downloading ${ARCHIVE_FILE}..."; \
		wget -c ${LINK}; \
	else \
		echo "Archive ${ARCHIVE} already exists. Skipping."; \
	fi
else ifeq ($(SRCCD),git)
	@echo "Mode: Git"
	@if [ ! -d ${PKGNAME} ]; then \
		echo "Directory not found. Cloning git repo..."; \
		git clone ${HOMEPAGE}; \
	else \
		echo "Git directory ${PKGNAME} already exists. Skipping."; \
	fi
else
	$(error Unknown SRCCD: ${SRCCD}. Valid options are 'archive' or 'git')
endif


extract:
	tar -xvf ${ARCHIVE} 

build:
ifeq ($(BUILD),meson)
	@echo "Mode: Build Meson"
	meson setup -Dprefix=/usr -Dlibdir=/usr/lib ${BUILD_OPTION} build ${BUILDDIR}
	meson compile -C build
else ifeq ($(BUILD),make)
	@echo "Mode: Build Make"
	${AUTO_CONF}
	make -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} ${MAKEOPT}
else ifeq ($(BUILD),cmake)
	@echo "Mode: Build Cmake"
	cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib \
		-B build -S ${BUILDDIR} ${BUILD_OPTION}
	cmake --build build ${TARGET}
else ifeq ($(BUILD),bmake)
	@echo "Mode: Build BSD Make"
	${AUTO_CONF}
	bmake -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} ${MAKEOPT}
else ifeq ($(BUILD),muon)
	@echo "Mode: Build Muon"
	mkdir b
	cd b && muon build -Dprefix=/usr -Dlibdir=/usr/lib ${BUILD_OPTION} ../${BUILDDIR}
else ifeq ($(BUILD),cargo)
	@echo "Mode: Build Cargo"
	cargo build --release --manifest-path ${BUILDDIR}/Cargo.toml ${BUILD_OPTION}
else ifeq ($(BUILD),zig)
	@echo "Mode: Build Zig"
	DESTDIR="build" ${ZIGPATH}/zig build --build-file ${BUILDDIR}/build.zig ${BUILD_OPTION}
else ifeq ($(BUILD),custom)
	$(MAKE) custom-build
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', \
		'make', 'cmake', 'bmake', 'muon', 'cargo', 'zig' or 'custom')
endif

striping:
ifeq ($(STRIP),no)
	@echo "No need to strip"
else
	$(MAKE) strip
endif

_package_meson:
	@echo "Mode: Package Meson"
	meson install --no-rebuild -C build --destdir package
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/build/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/build/package; find . -type f | sed 's|^.||' > ../../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/build/package/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/build/package -cvf ${PACKAGE}.tar.gz .

_package_make:
	@echo "Mode: Package Make"
ifeq ($(MKINST),no)
	@echo "No need to install"
else
	make -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} \
		${MAKEOPT} DESTDIR=${DESTDIR} install
endif
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/package; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/package/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/package -cvf ${PACKAGE}.tar.gz .

_package_cmake:
	@echo "Mode: Package Cmake"
	DESTDIR="package" cmake --install build
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/package; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/package/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/package -cvf ${PACKAGE}.tar.gz .

_package_bmake:
	@echo "Mode: Package BSD Make"
ifeq ($(MKINST),no)
	@echo "No need to install"
else
	bmake -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} \
		${MAKEOPT} DESTDIR=${DESTDIR} install
endif
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/package; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/package/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/package -cvf ${PACKAGE}.tar.gz .

_package_muon:
	@echo "Mode: Package Muon"
	muon -C b install -d package
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/b/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/b/package; find . -type f | sed 's|^.||' > ../../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/b/package/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/b/package -cvf ${PACKAGE}.tar.gz .

_package_cargo:
	@echo "Mode: Package Cargo"
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/pkg/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/pkg; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/pkg/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/pkg -cvf ${PACKAGE}.tar.gz .

_package_zig:
	@echo "Mode: Package Zig"
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/pkg/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/pkg; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/pkg/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/pkg -cvf ${PACKAGE}.tar.gz .

_package_custom:
	@echo "Mode: Package Custom"
	install -Dm644 $(CURDIR)/Makefile $(CURDIR)/pkg/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	$(MAKE) striping
ifeq ($(GRAFT),no)
	@cd $(CURDIR)/pkg; find . -type f | sed 's|^.||' > ../${PACKAGE}.list
	@install -Dm644 $(CURDIR)/${PACKAGE}.list $(CURDIR)/pkg/var/log/mk/${PACKAGE}.list
else
	@echo "The package will use graft for installation"
endif
	tar -C $(CURDIR)/pkg -cvf ${PACKAGE}.tar.gz .

package:
ifeq ($(BUILD),meson)
	$(MAKE) _package_meson
else ifeq ($(BUILD),make)
	$(MAKE) _package_make
else ifeq ($(BUILD),cmake)
	$(MAKE) _package_cmake
else ifeq ($(BUILD),bmake)
	$(MAKE) _package_bmake
else ifeq ($(BUILD),muon)
	$(MAKE) _package_muon
else ifeq ($(BUILD),cargo)
	$(MAKE) _package_cargo
else ifeq ($(BUILD),zig)
	$(MAKE) _package_zig
else ifeq ($(BUILD),custom)
	$(MAKE) _package_custom
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', \
		'make', 'cmake', 'bmake', 'muon', 'cargo', 'zig' or 'custom')
endif


install-package:
	echo "Installing package archive ${PKG}"
	echo "make directory for $(shell basename -s .tar.gz ${PKG})"
	mkdir /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	echo "extracting package archive ${PKG}"
	tar -xvf ${PKG} -C /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	graft -i -P -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG})

info-package:
	@echo "Package		: $(PKGNAME)"
	@echo "Description	: $(COMMENT)"
	@echo "Version		: $(VERSION)"
	@echo "Revision	: $(REVISION)"
	@echo "Categories	: $(CATEGORIES)"
	@echo "Homepage	: $(HOMEPAGE)"
	@echo "Archive		: $(ARCHIVE)"
	@echo "Link		: $(LINK)"
	@echo "Source code	: $(SRCCD)"
	@echo "Build type	: $(BUILD)"

include /usr/share/mk/strip.mk
