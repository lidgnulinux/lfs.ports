search:
	@find -name "*${PKG}*" -type d

build:
	@make -C ${DIR} download extract build

package:
	@make -C ${DIR} package 

list:
	@find -mindepth 2 -name "Makefile" -type f | cut -d "/" -f 1,2,3 

install:
ifeq ($(PORTSDIR),)
	$(error Need to specify ports directory / PORTSDIR first)
else
	for i in $$(find -maxdepth 1 -type d -not -path './.git' -not -path './man'| sed '1d'); \
		do cp -r $$i ${PORTSDIR}; done
	cp -rv Makefile ${PORTSDIR}
endif

amount:
	@echo "  ${_P} : $(shell find ${_P} -maxdepth 1 -type d | sed '1d' | wc -l) ports available"

stat:
	@echo ""
	@echo "Ports availability."
	@make -s _P=audio amount
	@make -s _P=compressors amount
	@make -s _P=daemon amount
	@make -s _P=db amount
	@make -s _P=devel amount
	@make -s _P=editor amount
	@make -s _P=firmware amount
	@make -s _P=font amount
	@make -s _P=icon amount
	@make -s _P=kernel amount
	@make -s _P=lang amount
	@make -s _P=libs amount
	@make -s _P=lisp amount
	@make -s _P=lxde amount
	@make -s _P=media amount
	@make -s _P=misc amount
	@make -s _P=net amount
	@make -s _P=perl amount
	@make -s _P=python amount
	@make -s _P=shell amount
	@make -s _P=sys amount
	@make -s _P=tool amount
	@make -s _P=wayland amount
	@make -s _P=x11 amount
	@make -s _P=xapps amount
	@make -s _P=xfce4 amount
	@echo ""
