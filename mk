#!/usr/bin/make -f

package=$(shell basename -s .tar.gz ${PKG})
TAR=/usr/bin/tar

list:
	@find /var/lib/mk/ \
		-name "*.mk" \
		-printf '%f\n' \
		| cut -d "-" -f 1,2 \
		| awk -F "-" '{print $$1,$$2}' | sort

content:
	@find /usr/pkg/${PKG}-* -printf '${PKG} : /%P\n'| sed 1d

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
   \033[1mhelp, h\033[0m			show this help. \n\
   \033[1mlist, l\033[0m			show installed packages. \n\
   \033[1mcontent, c PKG=package\033[0m	show package contents. \n\
   \033[1msearch, s q=query\033[0m		search package. \n\
   \033[1mview, v PKG=package\033[0m		view package Makefile. \n\
   \033[1minfo, i PKG=package\033[0m		view package information. \n\
   \033[1minstall, a PKG=package\033[0m	install package. \n\
   \033[1mremove, r PKG=<package path>\033[0m	remove package. \n\
   \033[1mupgrade, u PKG=package\033[0m	upgrade package. \n"

install:
	echo "Installing package archive ${PKG}"
	echo "make directory for $(shell basename -s .tar.gz ${PKG})"
	mkdir /usr/pkg/$(shell basename -s .tar.gz ${PKG})

	@echo "extracting & grafting package archive ${PKG}"
	${TAR} -xf ${PKG} -C /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	@echo "before that, let's check if we need pruning for ${PKG}"
ifeq ($(P),1)
	@echo "Oh, P=1 is specified. Let's do pruning"
	graft -p -D -u -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG})
else
	@echo "P=1 isn't specified, no pruning performed."
endif
	graft -i -P -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG})

	@echo "Run post-install target if available"
	@if $(MAKE) -f /usr/pkg/${package}/var/lib/mk/${package}.mk -n post-install > /dev/null; then \
		$(MAKE) -f /usr/pkg/${package}/var/lib/mk/${package}.mk post-install; \
	else \
		echo "No post-install target available."; \
	fi

info:
	@find /var/lib/mk/ \
		-name "${PKG}-*.mk" \
		-exec grep COMM -A 9 {} \;

remove:
	@echo "Uninstalling package at ${PKG}"
	@echo "Pruning any conflict ..."
	graft -p -D -u -t / ${PKG} 

	@echo "Disabling links ..."
	graft -d -D -u -t / ${PKG}

	@echo "removing the ${PKG} directory ..."
	rm -rf ${PKG}

upgrade:
	@echo "Installing package archive ${PKG}"
	@echo "Pruning any conflict from previous package ..."
	graft -p -D -u -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG} | cut -d "-" -f 1)-*

	@echo "Disabling links ..."
	graft -d -D -u -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG} | cut -d "-" -f 1)-*

	@echo "Removing previous package directory ..."
	rm -rf /usr/pkg/$(shell basename -s .tar.gz ${PKG} | cut -d "-" -f 1)-*

	@echo "Begin installing upgrade ..."
	@echo "Installing package archive ${PKG}"
	@echo "make directory for $(shell basename -s .tar.gz ${PKG})"
	mkdir /usr/pkg/$(shell basename -s .tar.gz ${PKG})

	@echo "extracting & grafting package archive ${PKG}"
	${TAR} -xf ${PKG} -C /usr/pkg/$(shell basename -s .tar.gz ${PKG})
	graft -i -P -t / /usr/pkg/$(shell basename -s .tar.gz ${PKG})

	echo "Run post-install target if available"
	@if $(MAKE) -f /usr/pkg/${package}/var/lib/mk/${package}.mk -n post-install > /dev/null; then \
		$(MAKE) -f /usr/pkg/${package}/var/lib/mk/${package}.mk post-install; \
	else \
		echo "No post-install target available."; \
	fi

# target alias
l: list
c: content
s: search
v: view
h: help
a: install
i: info
r: remove
u: upgrade
