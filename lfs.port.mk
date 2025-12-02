PREFIX=/usr
LIBDIR=/usr/lib
SYSCONFDIR=/etc
LIBEXECDIR=/usr/libexec
BINDIR=/usr/bin
PACKAGE = ${PKGNAME}-${VERSION}-${REVISION}@${CATEGORIES}

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

# prepare:
# 	${PREPARE}

build:
ifeq ($(BUILD),meson)
	@echo "Mode: Build Meson"
	meson setup -Dprefix=/usr -Dlibdir=/usr/lib ${BUILD_OPTION} build ${BUILDDIR}
	meson compile -C build
else ifeq ($(BUILD),make)
	@echo "Mode: Build Make"
	${AUTO_CONF}
	make -j4 -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} ${MAKEOPT}
else ifeq ($(BUILD),cmake)
	@echo "Mode: Build Cmake"
	cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -B build -G Ninja -S ${BUILDDIR} ${BUILD_OPTION}
	cmake --build build
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', 'make', or 'cmake')
endif


package:
ifeq ($(BUILD),meson)
	@echo "Mode: Package Meson"
	meson install --no-rebuild -C build --destdir package
	install  -Dm644 $(PWD)/Makefile $(PWD)/build/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	tar -C build/package -cvf ${PACKAGE}.tar.gz .
else ifeq ($(BUILD),make)
	@echo "Mode: Package Make"
  ifeq ($(MKINST),no)
		@echo "No need to install"
  else
		make -j4 -C ${BUILDDIR} PREFIX=${PREFIX} ${MAKEFLAGS} ${MAKEOPT} DESTDIR="$(PWD)/package" install
  endif
	install  -Dm644 $(PWD)/Makefile $(PWD)/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	tar -C package -cvf ${PACKAGE}.tar.gz .
else ifeq ($(BUILD),cmake)
	@echo "Mode: Package Cmake"
	DESTDIR="package" cmake --install build
	install  -Dm644 $(PWD)/Makefile $(PWD)/package/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	tar -C package -cvf ${PACKAGE}.tar.gz .
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', 'make', or 'cmake')
endif


install-package:
	echo "Installing package archive ${PKG}"
	echo "make directory for $(shell basename -s .tar.gz ${PKG})"
	mkdir /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	echo "extracting package archive ${PKG}"
	tar -xvf ${PKG} -C /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	graft -i -P -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG})
