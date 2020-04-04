filename ?= "betterclock.sh"
betterclock:
	cp $(filename) betterclock
	chmod 775 betterclock

install:
	cp betterclock /usr/local/bin/

remove: clean
	rm /usr/local/bin/betterclock

clean: betterclock
	rm betterclock

.PHONY: install remove clean
