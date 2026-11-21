ifeq ($(LLVM),1)
	include with_llvm.mk
else
	include no.llvm.mk
endif

post_build:
ifeq ($(LLVM),1)
	install -Dm644 $(CURDIR)/with_llvm.mk build/package/var/lib/mk/${PACKAGE}.mk
else
	install -Dm644 $(CURDIR)/no.llvm.mk build/package/var/lib/mk/${PACKAGE}.mk
endif
