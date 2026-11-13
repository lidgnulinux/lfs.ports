do_strip:
	@find ${DIR} \
		| xargs file \
		| grep -e "executable" -e "shared object" \
		| grep ELF | cut -f 1 -d : \
		| xargs strip --strip-unneeded 2> /dev/null

strip:
ifeq ($(BUILD),$(filter $(BUILD),make bmake cmake))
	$(MAKE) DIR=$(CURDIR)/package do_strip
else ifeq ($(BUILD),$(filter $(BUILD),cargo zig custom))
	$(MAKE) DIR=$(CURDIR)/pkg do_strip
else ifeq ($(BUILD),meson)
	$(MAKE) DIR=$(CURDIR)/build/package do_strip
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', \
		'make', 'cmake', 'bmake', 'muon', 'cargo', 'zig' or 'custom')
endif
