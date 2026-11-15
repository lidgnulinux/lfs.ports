search:
	@find -name "*${PKG}*" -type d

build:
	@make -C ${DIR} download extract build

package:
	@make -C ${DIR} package 

list:
	@find -mindepth 2 -name "Makefile" -type f | cut -d "/" -f 1,2,3 
