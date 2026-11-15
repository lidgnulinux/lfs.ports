search:
	@find -name "*${PKG}*" -type d

build:
	@make -C ${DIR} download extract build

package:
	@make -C ${DIR} package 

list:
	@find -mindepth 2 -name "Makefile" -type f | cut -d "/" -f 1,2,3 

install:
ifndef PORTSDIR
$(error Need to specify ports directory / PORTSDIR first)
endif
	for i in $$(find -maxdepth 1 -type d -not -path './.git' -not -path './man'| sed '1d'); \
		do cp -r $$i ${PORTSDIR}; done
