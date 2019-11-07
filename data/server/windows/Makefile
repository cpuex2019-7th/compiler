default: install

sld2bin: sld2bin.c
	gcc -Wall -O3 sld2bin.c -o sld2bin

install: sld2bin
	cp sld2bin /usr/local/bin/cpuex_sld2bin

clean: 
	rm sld2bin
