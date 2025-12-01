#!/usr/bin/make -f

list:
	@find /var/lib/mk/ \
		-name "*.mk" \
		-printf '%f\n' \
		| cut -d "-" -f 1,2 \
		| awk -F "-" '{print $$1,$$2}' | sort

content:
	@find /usr/pkg/${PKG}-* -printf '%P\n'| sed 1d

search:
	@find /var/lib/mk/ \
		-name "*${q}*.mk" \
		-printf '%f\n' \
		| cut -d "-" -f 1,2 \
		| awk -F "-" '{print $$1,$$2}'

view:
	@find /var/lib/mk/ \
		-name "${PKG}-*.mk" \
		-exec less -c {} \;

help:
	@echo -e "\n\
   help			show this help. \n\
   list			show installed packages. \n\
   content PKG=package	show package contents. \n\
   search q=query	search package. \n\
   view PKG=package	view package Makefile. \n"
