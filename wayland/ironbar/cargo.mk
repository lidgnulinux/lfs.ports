build:
	@echo "Mode: Build Cargo"
	cargo build --release --manifest-path ${BUILDDIR}/Cargo.toml

package:
	@echo "Mode: Package Custom"
	install -Dm644 $(PWD)/Makefile $(PWD)/pkg/var/lib/mk/${PACKAGE}.mk
	$(MAKE) post_build
	tar -C pkg -cvf ${PACKAGE}.tar.gz .
