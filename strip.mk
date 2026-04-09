strip:
ifeq ($(BUILD),$(filter $(BUILD),make bmake cmake))
	@find $(PWD)/package \
		| xargs file \
		| grep -e "executable" -e "shared object" \
		| grep ELF | cut -f 1 -d : \
		| xargs strip --strip-unneeded 2> /dev/null
else ifeq ($(BUILD),$(filter $(BUILD),cargo custom))
	@find $(PWD)/pkg \
		| xargs file \
		| grep -e "executable" -e "shared object" \
		| grep ELF | cut -f 1 -d : \
		| xargs strip --strip-unneeded 2> /dev/null
else ifeq ($(BUILD),meson)
	@find $(PWD)/build/package \
		| xargs file \
		| grep -e "executable" -e "shared object" \
		| grep ELF | cut -f 1 -d : \
		| xargs strip --strip-unneeded 2> /dev/null
else
	$(error Unknown BUILD: ${BUILD}. Valid options are 'meson', 'make', 'cmake', 'bmake', 'muon', 'cargo' or 'custom')
endif
