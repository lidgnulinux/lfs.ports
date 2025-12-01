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
		-name "*${PKG}*.mk" \
		-printf '%f\n' \
		| cut -d "-" -f 1,2 \
		| awk -F "-" '{print $$1,$$2}'

view:
	@find /var/lib/mk/ \
		-name "${PKG}-*.mk" \
		-exec less -c {} \;
